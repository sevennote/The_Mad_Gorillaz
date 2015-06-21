var PossibleAnswer = React.createClass({
  render: function() {
    var letters = ["A", "B", "C"];
    var letter = letters[this.props.id];
    return (
      <tr>
        <th className="form-letter"><a href="#" className="letter-anchor">{letter}. </a></th>
        <th>{this.props.answer.content}</th>
      </tr>
    );
  }
});
