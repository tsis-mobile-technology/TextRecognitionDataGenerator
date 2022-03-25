#!/bin/bash
# 영어 (syllable)음절 관련 학습 데이터 생성시
python trdg/run.py -c 100000 -dt './trdg/dicts/en.txt' --output_dir '../aihub_data/self_out_trdg' -l en --thread_count 2
# 한글 (syllable)음절 관련 학습 데이터 생성시
python trdg/run.py -c 100000 -dt './trdg/dicts/ko.txt' --output_dir '../aihub_data/self_out_trdg' -l ko --thread_count 2
# 보험 청구서 관련 학습 데이터 생성시
python trdg/run.py -c 50000 -dt './trdg/dicts/ko_insurance.txt' --output_dir '../aihub_data/self_out_trdg' -l ko --thread_count 2
# 데이터 포맷
python convert_trdg2dtrb.py --input_path ../aihub_data/self_out_trdg --output_path ../aihub_data/self_1_data



#sample
python trdg/run.py -c 200 -dt './trdg/dicts/ko_insurance.txt' --output_dir './out' -l ko --thread_count 1
python trdg/run.py -c 200 -dt './trdg/dicts/ko.txt' --output_dir './out' -l ko --thread_count 1
python convert_trdg2dtrb.py --input_path ./out --output_path ./in
