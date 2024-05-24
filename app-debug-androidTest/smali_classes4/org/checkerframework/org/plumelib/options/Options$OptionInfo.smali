.class Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/options/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionInfo"
.end annotation


# instance fields
.field aliases:[Ljava/lang/String;

.field baseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field defaultStr:Ljava/lang/String;

.field description:Ljava/lang/String;

.field enumJdoc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field factory:Ljava/lang/reflect/Method;

.field factoryArg2:Ljava/lang/Object;

.field field:Ljava/lang/reflect/Field;

.field jdoc:Ljava/lang/String;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field longName:Ljava/lang/String;

.field noDocDefault:Z

.field obj:Ljava/lang/Object;

.field shortName:Ljava/lang/String;

.field final synthetic this$0:Lorg/checkerframework/org/plumelib/options/Options;

.field typeName:Ljava/lang/String;

.field unpublicized:Z


# direct methods
.method constructor <init>(Lorg/checkerframework/org/plumelib/options/Options;Ljava/lang/reflect/Field;Lorg/checkerframework/org/plumelib/options/Option;Ljava/lang/Object;Z)V
    .locals 10
    .param p1, "this$0"    # Lorg/checkerframework/org/plumelib/options/Options;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "option"    # Lorg/checkerframework/org/plumelib/options/Option;
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "unpublicized"    # Z

    .line 426
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->this$0:Lorg/checkerframework/org/plumelib/options/Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->defaultStr:Ljava/lang/String;

    .line 388
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->noDocDefault:Z

    .line 391
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->list:Ljava/util/List;

    .line 394
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->constructor:Ljava/lang/reflect/Constructor;

    .line 400
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factory:Ljava/lang/reflect/Method;

    .line 403
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factoryArg2:Ljava/lang/Object;

    .line 427
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->field:Ljava/lang/reflect/Field;

    .line 429
    iput-object p4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    .line 430
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    .line 431
    iput-boolean p5, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->unpublicized:Z

    .line 432
    invoke-interface {p3}, Lorg/checkerframework/org/plumelib/options/Option;->aliases()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->aliases:[Ljava/lang/String;

    .line 433
    invoke-interface {p3}, Lorg/checkerframework/org/plumelib/options/Option;->noDocDefault()Z

    move-result v2

    iput-boolean v2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->noDocDefault:Z

    .line 436
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    .line 437
    iget-boolean v2, p1, Lorg/checkerframework/org/plumelib/options/Options;->useDashes:Z

    if-eqz v2, :cond_0

    .line 438
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    .line 442
    :cond_0
    const/4 v2, 0x0

    .line 443
    .local v2, "defaultObj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 447
    :try_start_0
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 448
    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->defaultStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 453
    :cond_1
    nop

    .line 455
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_b

    .line 461
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 462
    .local v3, "genType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    const-string v5, " for field "

    if-eqz v4, :cond_6

    .line 463
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 464
    .local v4, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 465
    .local v6, "rawType":Ljava/lang/reflect/Type;
    const-class v7, Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 472
    if-nez v2, :cond_2

    .line 473
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v7, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_1
    invoke-virtual {p2, p4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 478
    nop

    .line 479
    move-object v2, v7

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected error setting default for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 481
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    :goto_0
    move-object v7, v2

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 482
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->defaultStr:Ljava/lang/String;

    .line 485
    :cond_3
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 486
    .local v0, "defaultObjAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->list:Ljava/util/List;

    .line 488
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 489
    .local v7, "listTypeArgs":[Ljava/lang/reflect/Type;
    array-length v8, v7

    if-nez v8, :cond_4

    const-class v8, Ljava/lang/Object;

    goto :goto_1

    :cond_4
    aget-object v8, v7, v1

    :goto_1
    check-cast v8, Ljava/lang/Class;

    iput-object v8, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    goto :goto_2

    .line 466
    .end local v0    # "defaultObjAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v7    # "listTypeArgs":[Ljava/lang/reflect/Type;
    :cond_5
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@Option supports List<...> but no other parameterized type; it does not support type "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    .end local v4    # "pt":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "rawType":Ljava/lang/reflect/Type;
    :cond_6
    :goto_2
    :try_start_2
    invoke-interface {p3}, Lorg/checkerframework/org/plumelib/options/Option;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/options/Options;->access$000(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/options/Options$ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .local v0, "pr":Lorg/checkerframework/org/plumelib/options/Options$ParseResult;
    nop

    .line 504
    iget-object v4, v0, Lorg/checkerframework/org/plumelib/options/Options$ParseResult;->shortName:Ljava/lang/String;

    iput-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->shortName:Ljava/lang/String;

    .line 505
    iget-object v4, v0, Lorg/checkerframework/org/plumelib/options/Options$ParseResult;->typeName:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 506
    iget-object v4, v0, Lorg/checkerframework/org/plumelib/options/Options$ParseResult;->typeName:Ljava/lang/String;

    iput-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->typeName:Ljava/lang/String;

    goto :goto_3

    .line 508
    :cond_7
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-static {v4}, Lorg/checkerframework/org/plumelib/options/Options;->access$100(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->typeName:Ljava/lang/String;

    .line 510
    :goto_3
    iget-object v4, v0, Lorg/checkerframework/org/plumelib/options/Options$ParseResult;->description:Ljava/lang/String;

    iput-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->description:Ljava/lang/String;

    .line 513
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_a

    .line 515
    :try_start_3
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    const-class v6, Ljava/nio/file/Path;

    const/4 v7, 0x1

    if-ne v4, v6, :cond_8

    .line 516
    const-class v4, Ljava/nio/file/Paths;

    const-string v6, "get"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v1

    const-class v9, [Ljava/lang/String;

    aput-object v9, v8, v7

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factory:Ljava/lang/reflect/Method;

    .line 517
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factoryArg2:Ljava/lang/Object;

    goto :goto_4

    .line 518
    :cond_8
    const-class v6, Ljava/util/regex/Pattern;

    if-ne v4, v6, :cond_9

    .line 519
    const-class v4, Ljava/util/regex/Pattern;

    const-string v6, "compile"

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factory:Ljava/lang/reflect/Method;

    goto :goto_4

    .line 521
    :cond_9
    new-array v6, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 531
    :goto_4
    goto :goto_5

    .line 523
    :catch_1
    move-exception v1

    .line 524
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@Option does not support type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because it does not have a string constructor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 533
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_5
    return-void

    .line 500
    .end local v0    # "pr":Lorg/checkerframework/org/plumelib/options/Options$ParseResult;
    :catchall_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while processing @Option(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 502
    invoke-interface {p3}, Lorg/checkerframework/org/plumelib/options/Option;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\") on \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 456
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "genType":Ljava/lang/reflect/Type;
    :cond_b
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@Option may not annotate a variable of array type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :catch_2
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error getting default for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 444
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option field is not public: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public argumentRequired()Z
    .locals 2

    .line 541
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 542
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public synopsis()Ljava/lang/String;
    .locals 5

    .line 552
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->this$0:Lorg/checkerframework/org/plumelib/options/Options;

    iget-boolean v0, v0, Lorg/checkerframework/org/plumelib/options/Options;->useSingleDash:Z

    if-eqz v0, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    const-string v0, "--"

    .line 553
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->shortName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 555
    const-string v3, "-%s %s"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 557
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->typeName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "=<%s>"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->list:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [+]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 572
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->this$0:Lorg/checkerframework/org/plumelib/options/Options;

    iget-boolean v0, v0, Lorg/checkerframework/org/plumelib/options/Options;->useSingleDash:Z

    const-string v1, "-"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "--"

    .line 573
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    const-string v2, ""

    .line 574
    .local v2, "shortNameStr":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->shortName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 577
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->field:Ljava/lang/reflect/Field;

    filled-new-array {v2, v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%s%s%s field %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
