package board.dao;

import board.domain.BoardLikeVO;


public interface BoardLikeDao {
	public abstract void addLike(BoardLikeVO boardLikeVO);
	public abstract void deleteLike(BoardLikeVO boardLikeVO);
	public abstract int countLike(int seq);
	public abstract int searchId(BoardLikeVO boardLikeVO);
	public abstract void updateCount(int seq);
	//public abstract void checkLike(Map<String,Object> map);
}
