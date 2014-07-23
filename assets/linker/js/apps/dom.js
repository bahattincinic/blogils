/** @jsx React.DOM */
window.Repeater = React.createClass({
  render: function() {

    var scope = this.props.scope;

    var rows = _.map(scope.data, function(datum) {
      return (
        <tr>
          <td>{datum['title']}</td>
          <td>{datum['createdAt']}</td>
          <td><a href="/admin/blog/edit/{datum['id']}">Edit</a></td>
          <td><a href="/blog/destroy/{datum['id']}">Delete</a></td>
        </tr>
      );
    });

    return (
      <tbody>
        {rows}
      </tbody>
    );
  }
});