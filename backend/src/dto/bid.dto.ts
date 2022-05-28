import { User } from "src/db/user/user.entity";

export interface BidRequestDTO {
    productId: number,
    time: number,
    amount: number,
    bidder: string;
}

export interface BidSubmitDTO {
    productId: number,
    time: number,
    amount: number,
    bidder: User;
}

export interface BidResponseDTO {
    success: boolean;
}