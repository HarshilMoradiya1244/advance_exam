class QuotesModel{

  int? count,totalCount,page,totalPages,lastItemIndex;
  List<ResultsModel> resultsList = [];

  QuotesModel(
      {this.count,
      this.totalCount,
      this.page,
      this.totalPages,
      this.lastItemIndex,
        required this.resultsList,
      });

  factory QuotesModel.mapToModel(Map m1){
    List result = m1['results'];
    return QuotesModel(
      count:m1['count'] ,
      totalCount:m1['totalCount'] ,
      page:m1['page'] ,
      totalPages:m1['totalPages'] ,
      lastItemIndex:m1['lastItemIndex'] ,
      resultsList:result.map((e) => ResultsModel.mapToModel(e)).toList(),
    );
  }
}

class ResultsModel{

  String? author,content,authorSlug,dateAdded,dateModified;
  ResultsModel(
      {
      this.author,
      this.content,
      this.authorSlug,
      this.dateAdded,
      this.dateModified,
       });

  factory ResultsModel.mapToModel(Map m1){

    return ResultsModel(
      author:m1['author'] ,
      content:m1['content'] ,
      authorSlug:m1['authorSlug'] ,
      dateAdded:m1['dateAdded'] ,
      dateModified:m1['dateModified'] ,
    );
  }
}


