import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { ProductResponse } from 'src/dto/product.interface';
import { Repository } from 'typeorm';
import { ProductItem } from './productItem.entity';

@Injectable()
export class ProductItemService {
  constructor(
    @InjectRepository(ProductItem)
    private productRepository: Repository<ProductItem>,
  ) {}

  async getProductById(id: number): Promise<ProductResponse> {
    const product: ProductItem = await this.productRepository.findOneBy({productId: id})
    if(product) {
      return {
        productId: id,
        exists: true,
        name: product.name,
        imgUrl: product.imgUrl,
        price: product.price,
        description: product.description,
        productUrl: product.productUrl
      }
    }
    else {
      return {
        productId: -1,
        exists: false,
        name: "",
        imgUrl: "",
        price: -1,
        description: "",
        productUrl: ""
      }
    }
  }

  async insertProduct(product: ProductItem) {
    await this.productRepository.insert(product);
    return {"success": true}
  }

  // async getAllCountries(): Promise<string[]> {
  //   const countries: Country[] = await this.countriesRepository.find();
    
  //   const countryList: string[] = []

  //   countries.forEach(country => {
  //     countryList.push(country.name);
  //   });

  //   return countryList;//this.countriesRepository.find();
  // }
}