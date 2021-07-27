export interface Member {
  id: number;
  login: string;
  avatar_url: string;
}

export const createDefaultMember = (): Member => ({
  id: -1,
  login: "",
  avatar_url: ""
});
