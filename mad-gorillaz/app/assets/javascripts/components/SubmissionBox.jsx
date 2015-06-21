var SubmissionBox = React.createClass({
  getInitialState: function() {
    return {data: this.props};
  },
  render: function() {
    console.log(this.state);
    var questions = this.state.data.questions;
    var renderQuestions = questions.map(function(question) {
      return <Question question={question} />
    })

    return (
      <div className="container">
        <div className="well">
          <h1>{ this.state.data.title }</h1>
        </div>

        <form action="/submissions" method="post">
          {renderQuestions }
        </form>
      </div>
    );
  }
});
