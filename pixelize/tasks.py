#!/usr/bin/env python

import os
import sys

import numpy
from scipy import misc

from invoke import task


@task(
    help={
        'infile': 'Original image filepath',
        'output_height': 'Image output height in pixels',
        'output_width': 'Image output width in pixels',
        'output_size': 'Image output size in pixels (equal height and width)',
        'sampling_factor': 'How much to "pixelate" the image, best as a power of 2 for output quality',
    }
)
def pixelize(ctx, infile, output_height=0, output_width=0, output_size=512, sampling_factor=16):
    """Pixelate an imput image into glitch art for use as an identicon or other avatar"""

    if not os.path.exists(infile):
        sys.exit('File {} does not exist!'.format(infile))

    image = misc.imread(infile)

    try:
        orig_height, orig_width, num_channels = image.shape
    except:
        orig_height, orig_width = image.shape

    if output_height and not output_width:
        output_width = int(orig_width * (orig_height / output_height))
    elif output_width and not output_height:
        output_height = int(orig_height * (orig_width / output_width))
    elif not any([output_height, output_width]):
        output_height = output_width = output_size

    image = misc.imresize(image, (output_height // sampling_factor or 1, output_width // sampling_factor or 1), 'lanczos')
    image = numpy.rot90(image, k=3)
    image = numpy.sort(image, axis=0)
    image = numpy.rot90(image, k=2)
    image = misc.imresize(image, (output_height, output_width), 'nearest')

    filename_parts = os.path.basename(infile).split('.')
    filename_parts.insert(-1, 'processed')

    processed_image_filename = os.path.join(os.path.dirname(infile), '.'.join(filename_parts))

    misc.imsave(processed_image_filename, image)
