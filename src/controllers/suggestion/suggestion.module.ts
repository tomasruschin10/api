import { Module } from "@nestjs/common";
import { SuggestionController } from "./suggestion.controller";
import { PassportModule } from "@nestjs/passport";
import { SuggestionService } from "./suggestion.service";
import { SharedModule } from "src/modules/shared/shared.module";

@Module({
  controllers: [SuggestionController],
  imports: [PassportModule, SharedModule],
  providers: [SuggestionService],
})
export class SuggestionModule {}
