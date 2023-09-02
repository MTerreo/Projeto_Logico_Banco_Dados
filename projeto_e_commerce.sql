drop schema `ecommerce`;


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8 ;
USE `ecommerce` ;

-- -----------------------------------------------------
-- Table `ecommerce`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `Nome_Completo` VARCHAR(45) NOT NULL,
  `CPF` CHAR(11) NOT NULL,
  `Data_Nascimento` DATE NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Telefone_1` CHAR(12) NOT NULL,
  `Telefone_2` CHAR(12) NULL,
  `Logradouro` VARCHAR(45) NOT NULL,
  `Numero` INT NULL,
  `Bairro` VARCHAR(45) NOT NULL,
  `Complemento` VARCHAR(45) NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  `Estado` CHAR(2) NOT NULL,
  `CEP` CHAR(8) NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Empresa_Frete`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Empresa_Frete` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Empresa_Frete` (
  `idEmpresa_Frete` INT NOT NULL AUTO_INCREMENT,
  `Razão_Social` VARCHAR(45) NOT NULL,
  `Nome_Fantasia` VARCHAR(45) NOT NULL,
  `CNPJ` VARCHAR(18) NOT NULL,
  `Responsavel` VARCHAR(45) NULL,
  `Email_1` VARCHAR(45) NOT NULL,
  `Email_2` VARCHAR(45) NULL,
  `Telefone_1` CHAR(12) NOT NULL,
  `Telefone_2` CHAR(12) NULL,
  PRIMARY KEY (`idEmpresa_Frete`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Entrega`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Entrega` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Entrega` (
  `idEntrega` INT NOT NULL AUTO_INCREMENT,
  `Código_rastreio` VARCHAR(7) NOT NULL,
  `Status_entrega` VARCHAR(45) NOT NULL,
  `Prazo_Entrega` DATE NOT NULL,
  `Valor_Frete` FLOAT NOT NULL,
  `Empresa_Frete_idEmpresa_Frete` INT NOT NULL,
  PRIMARY KEY (`idEntrega`, `Empresa_Frete_idEmpresa_Frete`),
  INDEX `fk_Entrega_Empresa_Frete1_idx` (`Empresa_Frete_idEmpresa_Frete` ASC) VISIBLE,
  CONSTRAINT `fk_Entrega_Empresa_Frete1`
    FOREIGN KEY (`Empresa_Frete_idEmpresa_Frete`)
    REFERENCES `ecommerce`.`Empresa_Frete` (`idEmpresa_Frete`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Pagamento_Cartao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Pagamento_Cartao` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Pagamento_Cartao` (
  `idForma_Pagamento` INT NOT NULL AUTO_INCREMENT,
  `Nome_Titular` VARCHAR(45) NOT NULL,
  `Número_Cartão` VARCHAR(16) NOT NULL,
  `Bandeira_Cartão` ENUM('VISA', 'MASTERCARD', 'ELO', 'MAESTRO', 'AMERICAN EXPRESS', 'HIPERCARD') NOT NULL,
  `Data_Validade` DATE NOT NULL,
  `CPF_CNPJ_Titular` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`idForma_Pagamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Carteira_Digital`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Carteira_Digital` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Carteira_Digital` (
  `idCarteira_Virtual` INT NOT NULL AUTO_INCREMENT,
  `Numero_Carteira` INT NOT NULL,
  `Data_Adesão` DATE NOT NULL,
  `Valor_conta` FLOAT NOT NULL,
  `Valor_Cashback` FLOAT NOT NULL,
  PRIMARY KEY (`idCarteira_Virtual`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Formas_Pagamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Formas_Pagamento` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Formas_Pagamento` (
  `Cliente_idCliente` INT NOT NULL AUTO_INCREMENT,
  `Pagamento_Cartão_idForma_Pagamento` INT NOT NULL,
  `Carteira_Digital_idCarteira_Virtual` INT NOT NULL,
  `Pix` VARCHAR(45) NULL,
  `Boleto_Bancário` VARCHAR(45) NULL,
  `Tranferência_Bancária` VARCHAR(45) NULL,
  PRIMARY KEY (`Cliente_idCliente`, `Pagamento_Cartão_idForma_Pagamento`, `Carteira_Digital_idCarteira_Virtual`),
  INDEX `fk_Cliente_has_Pagamento_Cartão_Pagamento_Cartão1_idx` (`Pagamento_Cartão_idForma_Pagamento` ASC) VISIBLE,
  INDEX `fk_Cliente_has_Pagamento_Cartão_Cliente1_idx` (`Cliente_idCliente` ASC) VISIBLE,
  INDEX `fk_Formas_Pagamento_Carteira_Digital1_idx` (`Carteira_Digital_idCarteira_Virtual` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_has_Pagamento_Cartão_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `ecommerce`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_has_Pagamento_Cartão_Pagamento_Cartão1`
    FOREIGN KEY (`Pagamento_Cartão_idForma_Pagamento`)
    REFERENCES `ecommerce`.`Pagamento_Cartao` (`idForma_Pagamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Formas_Pagamento_Carteira_Digital1`
    FOREIGN KEY (`Carteira_Digital_idCarteira_Virtual`)
    REFERENCES `ecommerce`.`Carteira_Digital` (`idCarteira_Virtual`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Pedido` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Pedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `Status_Pedido` ENUM('Cancelado', 'Em andamento', 'Processando', 'Enviado', 'Entregue') NULL DEFAULT 'Processando',
  `Descrição` VARCHAR(45) NOT NULL,
  `Data_Pedido` DATE NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  `Entrega_idEntrega` INT NOT NULL,
  `Formas_Pagamento_Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idPedido`, `Cliente_idCliente`, `Entrega_idEntrega`, `Formas_Pagamento_Cliente_idCliente`),
  INDEX `fk_Pedido_Cliente1_idx` (`Cliente_idCliente` ASC) VISIBLE,
  INDEX `fk_Pedido_Entrega1_idx` (`Entrega_idEntrega` ASC) VISIBLE,
  INDEX `fk_Pedido_Formas de Pagamento1_idx` (`Formas_Pagamento_Cliente_idCliente` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `ecommerce`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Entrega1`
    FOREIGN KEY (`Entrega_idEntrega`)
    REFERENCES `ecommerce`.`Entrega` (`idEntrega`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Formas_Pagamento1`
    FOREIGN KEY (`Formas_Pagamento_Cliente_idCliente`)
    REFERENCES `ecommerce`.`Formas_Pagamento` (`Cliente_idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Produto` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Produto` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Categoria` ENUM('Audio e Video', ' Automotivo', 'Bebês', 'Beleza e Perfumaria', 'Brinquedos', 'Cama, Mesa e Banho', 'Casa e Contrução', 'Celular e Smartphone', 'Decoração', 'Eletrodomésticos', 'Esporte e Lazer', 'Ferramentas', 'Games', 'Informática', 'Livros', 'Moda', 'Móveis', 'Papelaria', 'Pet Shop', 'Relógios', 'TVs') NOT NULL,
  `Descrição` VARCHAR(255) NOT NULL,
  `Valor_Unitário` FLOAT NOT NULL,
  `Possui_garantia` ENUM('Sim', 'Não') NOT NULL DEFAULT 'Sim',
  `Avaliação` FLOAT NULL DEFAULT 0,
  `Dimensões` VARCHAR(10) NULL,
  PRIMARY KEY (`idProduto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Fornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Fornecedor` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Fornecedor` (
  `idFornecedor` INT NOT NULL AUTO_INCREMENT,
  `Razão_Social` VARCHAR(45) NOT NULL,
  `Nome_Fantasia` VARCHAR(45) NOT NULL,
  `CNPJ` VARCHAR(18) NOT NULL,
  `Endereço_Fornecedor` VARCHAR(60) NOT NULL,
  `Responsavel` VARCHAR(45) NOT NULL,
  `Contato_Email` VARCHAR(45) NOT NULL,
  `Contato_Email_2` VARCHAR(45) NULL,
  `Contato_Telefone_1` VARCHAR(12) NOT NULL,
  `Contato_Telefone_2` VARCHAR(12) NULL,
  PRIMARY KEY (`idFornecedor`),
  UNIQUE INDEX `idFornecedor_UNIQUE` (`idFornecedor` ASC) VISIBLE,
  UNIQUE INDEX `CNPJ_UNIQUE` (`CNPJ` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Produto_Fornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Produto_Fornecedor` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Produto_Fornecedor` (
  `idFoFornecedor` INT NOT NULL,
  `idFoProduto` INT NOT NULL,
  PRIMARY KEY (`idFoFornecedor`, `idFoProduto`),
  INDEX `fk_Fornecedor_has_Produto_Produto1_idx` (`idFoProduto` ASC) VISIBLE,
  INDEX `fk_Fornecedor_has_Produto_Fornecedor_idx` (`idFoFornecedor` ASC) VISIBLE,
  CONSTRAINT `fk_Fornecedor_has_Produto_Fornecedor`
    FOREIGN KEY (`idFoFornecedor`)
    REFERENCES `ecommerce`.`Fornecedor` (`idFornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fornecedor_has_Produto_Produto1`
    FOREIGN KEY (`idFoProduto`)
    REFERENCES `ecommerce`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Estoque`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Estoque` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Estoque` (
  `idEstoque` INT NOT NULL AUTO_INCREMENT,
  `Local` VARCHAR(45) NOT NULL,
  `Responsavel` VARCHAR(45) NOT NULL,
  `Email_1` VARCHAR(45) NOT NULL,
  `Email_2` VARCHAR(45) NULL,
  `Telefone_1` VARCHAR(12) NOT NULL,
  `Telefone_2` VARCHAR(12) NULL,
  PRIMARY KEY (`idEstoque`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Produto_ Estoque`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Produto_Estoque` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Produto_Estoque` (
  `idEsProduto` INT NOT NULL,
  `idEsEstoque` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  PRIMARY KEY (`idEsProduto`, `idEsEstoque`),
  INDEX `fk_Produto_has_Estoque_Estoque1_idx` (`idEsEstoque` ASC) VISIBLE,
  INDEX `fk_Produto_has_Estoque_Produto1_idx` (`idEsProduto` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_has_Estoque_Produto1`
    FOREIGN KEY (`idEsProduto`)
    REFERENCES `ecommerce`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_has_Estoque_Estoque1`
    FOREIGN KEY (`idEsEstoque`)
    REFERENCES `ecommerce`.`Estoque` (`idEstoque`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.` Produto_Pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Produto_Pedido`;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Produto_Pedido` (
  `idPePedido` INT NOT NULL,
  `idPeProduto` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  `Status` ENUM('Disponivel', 'Sem estoque') NULL DEFAULT 'Disponivel',
  PRIMARY KEY (`idPePedido`, `idPeProduto`),
  INDEX `fk_Pedido_has_Produto_Produto1_idx` (`idPeProduto` ASC) VISIBLE,
  INDEX `fk_Pedido_has_Produto_Pedido1_idx` (`idPePedido` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_has_Produto_Pedido1`
    FOREIGN KEY (`idPePedido`)
    REFERENCES `ecommerce`.`Pedido` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_has_Produto_Produto1`
    FOREIGN KEY (`idPeProduto`)
    REFERENCES `ecommerce`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Terceiro_Vendedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Terceiro_Vendedor` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Terceiro_Vendedor` (
  `idTerceiro_Vendedor` INT NOT NULL AUTO_INCREMENT,
  `Razão_Social` VARCHAR(45) NOT NULL,
  `Nome_Fantasia` VARCHAR(45) NULL,
  `CPF_CNPJ` VARCHAR(18) NOT NULL,
  `Local` VARCHAR(45) NOT NULL,
  `Nome_Vendedor` VARCHAR(45) NOT NULL,
  `Email_1` VARCHAR(45) NOT NULL,
  `Email_2` VARCHAR(45) NULL,
  `Telefone_1` INT NOT NULL,
  `Telefone_2` INT NULL,
  PRIMARY KEY (`idTerceiro_Vendedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Produtos_Vendedor_Terceiro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Produtos_Vendedor_Terceiro` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Produtos_Vendedor_Terceiro` (
  `idVeVendedor` INT NOT NULL AUTO_INCREMENT,
  `idVeProduto` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  PRIMARY KEY (`idVeVendedor`, `idVeProduto`),
  INDEX `fk_Terceiro_Vendedor_has_Produto_Produto1_idx` (`idVeProduto` ASC) VISIBLE,
  INDEX `fk_Terceiro_Vendedor_has_Produto_Terceiro_Vendedor1_idx` (`idVeVendedor` ASC) VISIBLE,
  CONSTRAINT `fk_Terceiro_Vendedor_has_Produto_Terceiro_Vendedor1`
    FOREIGN KEY (`idVeVendedor`)
    REFERENCES `ecommerce`.`Terceiro_Vendedor` (`idTerceiro_Vendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Terceiro_Vendedor_has_Produto_Produto1`
    FOREIGN KEY (`idVeProduto`)
    REFERENCES `ecommerce`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`Conta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Conta` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Conta` (
  `idConta` INT NOT NULL AUTO_INCREMENT,
  `Tipo_Conta` VARCHAR(20) NOT NULL DEFAULT 'Pessoa Fisica',
  `CPF` VARCHAR(15) NULL,
  `CNPJ` VARCHAR(18) NULL,
  `Fundação` DATE NULL,
  `Aniversario` DATE NULL,
  `Atividade_Economica` VARCHAR(45) NULL,
  `Profissao` VARCHAR(45) NULL,
  `Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idConta`, `Cliente_idCliente`),
  INDEX `fk_Conta_Cliente1_idx` (`Cliente_idCliente` ASC) VISIBLE,
  CONSTRAINT `fk_Conta_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `ecommerce`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;





