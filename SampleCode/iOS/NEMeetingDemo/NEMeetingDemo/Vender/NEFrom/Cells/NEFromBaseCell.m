//
//  NEFromBaseCell.m
//  NEMeetingDemo
//
//  Copyright (c) 2014-2020 NetEase, Inc. All rights reserved.
//

#import "NEFromBaseCell.h"

@implementation NEFromBaseCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self doInit];
    }
    return self;
}


- (void)refreshCellWithRow:(NEFromRow *)row {
    _row = row;
    self.userInteractionEnabled = row.userInteractionEnabled;
    self.accessoryType = row.accessoryType;
}

- (void)doInit {};

#pragma mark - Getter
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:16];
        _titleLabel.text = @"主标题";
        [_titleLabel sizeToFit];
    }
    return _titleLabel;
}

@end
