var Question = React.createClass({
  render: function() {
    var answers = this.props.answers;
    var questionId = this.props.question.question.id;
    var prompt = this.props.question.question.prompt;
    var answers = this.props.question.answers;
    var renderedAnswers = answers.map(function(answer, idx) {
      return <PossibleAnswer answer={answer} id={idx} />
    });

    return (
      <div className="renderedQuestion">
        <div className="questionField">
          <p className="form-label">Your survey question: </p>
          <div className="form-group flex">
            <p> { prompt }</p>
          </div>
        </div>
        <div className="form-wrapper">
          <table className="table table-striped table-bordered">
            {renderedAnswers}
          </table>
        </div>
      </div>
    );
  }
});
