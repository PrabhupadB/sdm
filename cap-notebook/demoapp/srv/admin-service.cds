using {sap.capire.bookshop as my} from '../db/schema';

service AdminService @(requires: 'admin') {
  @cds.redirection.target: true
  entity Books @(restrict: [{
    grant: ['*'],
    to   : ['admin']
  }]) as projection on my.Books;

  entity Authors @(restrict: [{
    grant: ['*'],
    to   : ['admin']
  }]) as projection on my.Authors;
}
