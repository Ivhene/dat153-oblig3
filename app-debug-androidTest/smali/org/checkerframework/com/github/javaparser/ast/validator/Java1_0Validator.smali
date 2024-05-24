.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;
.source "Java1_0Validator.java"


# instance fields
.field final modifiersWithoutStrictfpAndDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noAnnotations:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noAssertKeyword:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noBinaryIntegerLiterals:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noEnums:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noForEach:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noGenerics:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noInnerClasses:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noLambdas:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noModules:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noMultiCatch:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noReflection:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noStaticImports:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noSwitchExpressions:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noUnderscoresInIntegerLiterals:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noVarargs:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final noYield:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final onlyOneLabelInSwitchCase:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final tryWithoutResources:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 23

    .line 107
    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;-><init>([Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V

    .line 24
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;

    invoke-direct {v1, v3, v3, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;-><init>(ZZZ)V

    iput-object v1, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->modifiersWithoutStrictfpAndDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 26
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v2, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noAssertKeyword:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 30
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v4, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda13;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda13;-><init>()V

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda14;-><init>()V

    invoke-direct {v3, v4, v5, v6}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v3, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noInnerClasses:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 34
    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v5, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda15;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda15;-><init>()V

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda16;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda16;-><init>()V

    invoke-direct {v4, v5, v6, v7}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v4, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noReflection:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 38
    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda17;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda17;-><init>()V

    invoke-direct {v5, v6}, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V

    iput-object v5, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noGenerics:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 50
    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v7, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda18;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda18;-><init>()V

    invoke-direct {v6, v7, v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v6, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->tryWithoutResources:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    .line 58
    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda19;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda19;-><init>()V

    invoke-direct {v7, v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V

    iput-object v7, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noAnnotations:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 63
    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v9, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    new-instance v10, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda20;

    invoke-direct {v10}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda20;-><init>()V

    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda11;

    invoke-direct {v11}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda11;-><init>()V

    invoke-direct {v8, v9, v10, v11}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v8, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noEnums:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 67
    new-instance v9, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v10, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda21;

    invoke-direct {v11}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda21;-><init>()V

    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda22;

    invoke-direct {v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda22;-><init>()V

    invoke-direct {v9, v10, v11, v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v9, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noVarargs:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 71
    new-instance v10, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v11, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda23;

    invoke-direct {v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda23;-><init>()V

    new-instance v13, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda24;

    invoke-direct {v13}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda24;-><init>()V

    invoke-direct {v10, v11, v12, v13}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v10, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noForEach:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 75
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v12, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    new-instance v13, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda25;

    invoke-direct {v13}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda25;-><init>()V

    new-instance v14, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda26;

    invoke-direct {v14}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda26;-><init>()V

    invoke-direct {v11, v12, v13, v14}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v11, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noStaticImports:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 79
    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v13, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;

    new-instance v14, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda27;

    invoke-direct {v14}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda27;-><init>()V

    new-instance v15, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda28;

    invoke-direct {v15}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda28;-><init>()V

    invoke-direct {v12, v13, v14, v15}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v12, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->onlyOneLabelInSwitchCase:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 83
    new-instance v13, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v14, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;

    new-instance v15, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda1;

    invoke-direct {v15}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v16, v12

    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda3;

    invoke-direct {v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v13, v14, v15, v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v13, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noYield:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 87
    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/NoBinaryIntegerLiteralsValidator;

    invoke-direct {v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/NoBinaryIntegerLiteralsValidator;-><init>()V

    iput-object v12, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noBinaryIntegerLiterals:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 88
    new-instance v14, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/NoUnderscoresInIntegerLiteralsValidator;

    invoke-direct {v14}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/NoUnderscoresInIntegerLiteralsValidator;-><init>()V

    iput-object v14, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noUnderscoresInIntegerLiterals:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 89
    new-instance v15, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    move-object/from16 v17, v14

    const-class v14, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    move-object/from16 v18, v12

    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda4;

    invoke-direct {v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda4;-><init>()V

    move-object/from16 v19, v13

    new-instance v13, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda5;

    invoke-direct {v13}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v15, v14, v12, v13}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v15, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noMultiCatch:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 93
    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v13, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    new-instance v14, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda6;

    invoke-direct {v14}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda6;-><init>()V

    move-object/from16 v20, v15

    new-instance v15, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda7;

    invoke-direct {v15}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {v12, v13, v14, v15}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v12, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noLambdas:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 97
    new-instance v13, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v14, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    new-instance v15, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda8;

    invoke-direct {v15}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda8;-><init>()V

    move-object/from16 v21, v12

    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda9;

    invoke-direct {v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda9;-><init>()V

    invoke-direct {v13, v14, v15, v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v13, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noModules:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 101
    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v14, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;

    new-instance v15, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda10;

    invoke-direct {v15}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda10;-><init>()V

    move-object/from16 v22, v13

    new-instance v13, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda12;

    invoke-direct {v13}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {v12, v14, v15, v13}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v12, v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->noSwitchExpressions:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 108
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 109
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 110
    invoke-virtual {v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 111
    invoke-virtual {v0, v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 112
    invoke-virtual {v0, v5}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 113
    invoke-virtual {v0, v6}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 114
    invoke-virtual {v0, v7}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 115
    invoke-virtual {v0, v8}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 116
    invoke-virtual {v0, v9}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 117
    invoke-virtual {v0, v10}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 118
    invoke-virtual {v0, v11}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 119
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 120
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 121
    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 122
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 123
    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 124
    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 125
    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 126
    invoke-virtual {v0, v12}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 127
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$1(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\'assert\' keyword is not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$10(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Enumerations are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$11(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Varargs are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$12(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$13(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "For-each loops are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$14(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Static imports are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$15(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;)Z
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$new$16(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Only one label allowed in a switch-case."

    invoke-virtual {p1, v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$17(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$18(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Only labels allowed in break statements."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$19(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$2(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isTopLevelType()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$20(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Multi-catch is not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$21(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$22(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Lambdas are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$23(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$24(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Modules are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$25(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$26(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Switch expressions are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$3(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "inner classes or interfaces are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$4(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$5(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Reflection is not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$6(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 39
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    const/4 v1, 0x0

    const-string v2, "Generics are not supported."

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;

    if-eqz v0, :cond_1

    .line 45
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_1
    return-void
.end method

.method static synthetic lambda$new$7(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "Try has no finally and no catch."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "Catch with resource is not supported."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_1
    return-void
.end method

.method static synthetic lambda$new$8(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 59
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Annotations are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_1
    return-void
.end method

.method static synthetic lambda$new$9(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 64
    const/4 v0, 0x1

    return v0
.end method
