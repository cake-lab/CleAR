#!/bin/sh

export BASE_MODEL_NAME="runwayml/stable-diffusion-v1-5"
export CONTROLNET_MODEL_NAME="lllyasviel/control_v11p_sd15_inpaint"
export OUTPUT_DIR="" # Replace this
export TRAIN_DATA_DIR="" # Replace this
export CUDA_VISIBLE_DEVICES=0

poetry run accelerate launch train_controlnet.py \
 --pretrained_model_name_or_path=$BASE_MODEL_NAME \
 --controlnet_model_name_or_path=$CONTROLNET_MODEL_NAME \
 --output_dir=$OUTPUT_DIR \
 --train_data_dir=$TRAIN_DATA_DIR \
 --caption_column=prompt \
 --image_column=envmap \
 --conditioning_image_column=rgb \
 --use_masked_condition_image \
 --resolution=512 \
 --learning_rate=1e-5 \
 --train_batch_size=4 \
 --max_train_steps=20000 \
 --validation_image tests/0.png \
 --validation_prompt "An indoor panoramic image." \
 --report_to tensorboard
