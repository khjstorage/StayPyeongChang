package com.staypc.utility;


public class Notice_Pager {
	public static final int PAGE_SCALE=3; 
	public static final int BLOCK_SCALE=5;
	
	public int curPage;
	private int prevPage;
	private int nextPage;
	private int totPage;
	private int totBlock;	
	private int curBlock;
	private int prevBlock;
	private int nextBlock;
	private int pageBegin;
	private int pageEnd;
	private int blockBegin;
	private int blockEnd;
	private static Notice_Pager instance =new Notice_Pager();
	
	
	
	@Override
	public String toString() {
		return "Notice_Pager [curPage=" + curPage + ", prevPage=" + prevPage + ", nextPage=" + nextPage + ", totPage="
				+ totPage + ", totBlock=" + totBlock + ", curBlock=" + curBlock + ", prevBlock=" + prevBlock
				+ ", nextBlock=" + nextBlock + ", pageBegin=" + pageBegin + ", pageEnd=" + pageEnd + ", blockBegin="
				+ blockBegin + ", blockEnd=" + blockEnd + "]";
	}


	public static Notice_Pager getInstance() {
		return instance;
	}
	
	
	public Notice_Pager(int count,int curPage) {
		curBlock=1; 
		this.curPage=curPage;	
		setTotPage(count);
		setPageRange();
		setTotBlock();
		setBlockRange();
	}

	public Notice_Pager() {
		// TODO Auto-generated constructor stub
	}

	public void setBlockRange() {
		curBlock=(int) Math.ceil((curPage-1)/BLOCK_SCALE)+1;

		blockBegin=(curBlock-1)* BLOCK_SCALE+1;
		blockEnd=blockBegin+BLOCK_SCALE-1;
		if(blockEnd>totPage) {
			blockEnd=totPage;
		}
		
		prevPage=(curPage==1) ? 1 : (curBlock-1)*BLOCK_SCALE;
		
		nextPage=(curBlock>totBlock) ? (curBlock*BLOCK_SCALE) : (curBlock*BLOCK_SCALE)+1;

		if(nextPage>totPage) {
			nextPage=totPage;
		}
		
	}
	
	public void setPageRange() {
		pageBegin=(curPage-1)*PAGE_SCALE+1;
		pageEnd=pageBegin+PAGE_SCALE-1;
	}
	
	public void setTotPage(int count) {
		totPage=(int)Math.ceil(count*1.0/PAGE_SCALE);
		
	}
	
	public void setTotBlock() {
		totBlock=(int)Math.ceil(totPage/BLOCK_SCALE);
	}

	
	
	//getter,setter
	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getCurBlock() {
		return curBlock;
	}

	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}

	public int getPrevBlock() {
		return prevBlock;
	}

	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}

	public int getNextBlock() {
		return nextBlock;
	}

	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}

	public int getPageBegin() {
		return pageBegin;
	}

	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}

	public int getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}

	public int getBlockBegin() {
		return blockBegin;
	}

	public void setBlockBegin(int blockBegin) {
		this.blockBegin = blockBegin;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}

	public int getTotBlock() {
		return totBlock;
	}

	public int getTotPage() {
		return totPage;
	}

}
