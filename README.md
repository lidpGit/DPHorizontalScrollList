# DPHorizontalScrollList
可重用的横向滚动列表，用法和tableView类似

/**
 *  总列数
 */
- (NSInteger)numberOfColumnsInTableView;

/**
 *  每列显示的view
 */
- (UIView *)tableView:(DPHorizontalScrollView *)tableView viewForColumnAtIndex:(NSInteger)index;

/**
 *  每行view的宽度
 */
- (CGFloat)tableView:(DPHorizontalScrollView *)tableView widthForColumnAtIndex:(NSInteger)index;

