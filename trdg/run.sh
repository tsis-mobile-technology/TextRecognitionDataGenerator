#!/bin/bash
# (syllable)음절 관련 학습 데이터 생성시
python trdg/run.py -c 100000 -dt './trdg/dicts/ko.txt' --output_dir '../aihub_data/self_out_trdg' -l ko --thread_count 2
# 보험 청구서 관련 학습 데이터 생성시
python trdg/run.py -c 50000 -dt './trdg/dicts/ko_insurance.txt' --output_dir '../aihub_data/self_out_trdg' -l ko --thread_count 2
# 데이터 포맷 변경
python convert_trdg2dtrb.py --input_path ../aihub_data/self_out_trdg --output_path ../aihub_data/self_1_data


#sample
python trdg/run.py -c 100 -dt './trdg/dicts/ko_insurance.txt' --output_dir './out' -l ko --thread_count 2
python trdg/run.py -c 100 -dt './trdg/dicts/ko.txt' --output_dir './out' -l ko --thread_count 2
python convert_trdg2dtrb.py --input_path ./out --output_path ./in
