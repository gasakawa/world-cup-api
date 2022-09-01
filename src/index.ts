import MatchRepository from 'repositories/match-repository';

(async () => {
  const mr = new MatchRepository();

  console.log(await mr.findAll());
})();
