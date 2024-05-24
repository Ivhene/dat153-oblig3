.class public Lorg/checkerframework/javacutil/TypeAnnotationUtils;
.super Ljava/lang/Object;
.source "TypeAnnotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Class TypeAnnotationUtils cannot be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static attributeFromAnnotationValue(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/AnnotationValue;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute;
    .locals 2
    .param p0, "meth"    # Ljavax/lang/model/element/ExecutableElement;
    .param p1, "av"    # Ljavax/lang/model/element/AnnotationValue;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 157
    new-instance v0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;

    invoke-direct {v0, p2, p0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils$AttributeCreator;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/ExecutableElement;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    return-object v0
.end method

.method public static classExtendsTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 1
    .param p0, "implidx"    # I
    .param p1, "pos"    # I

    .line 357
    invoke-static {p0, p1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->classExtends(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method private static contentEquals(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Name;)Z
    .locals 4
    .param p0, "n1"    # Lcom/sun/tools/javac/util/Name;
    .param p1, "n2"    # Lcom/sun/tools/javac/util/Name;

    .line 67
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    .local v0, "b1":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    .local v1, "b2":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static copyTAPosition(Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 5
    .param p0, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    .line 421
    sget-object v0, Lorg/checkerframework/javacutil/TypeAnnotationUtils$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 534
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected target type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 529
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodThrows(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 531
    .local v0, "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 523
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_1
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 524
    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->resourceVariable(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 526
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 520
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->newObj(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 521
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 511
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_3
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    iget v4, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 512
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodTypeParameterBound(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;III)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 518
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 506
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_4
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 507
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodTypeParameter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 509
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 501
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_5
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 502
    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodReturn(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 504
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 496
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_6
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 497
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodRefTypeArg(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 499
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 493
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_7
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodRef(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 494
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 488
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_8
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 489
    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodReceiver(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 491
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 483
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_9
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 484
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodInvocationTypeArg(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 486
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 478
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_a
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 479
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodParameter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 481
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 473
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_b
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 474
    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->localVariable(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 476
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 470
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_c
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->instanceOf(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 471
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto/16 :goto_0

    .line 467
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_d
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->field(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 468
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_0

    .line 462
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_e
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 463
    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->exceptionParameter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 465
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_0

    .line 457
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_f
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 458
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->constructorRefTypeArg(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 460
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_0

    .line 452
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_10
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 453
    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->constructorRef(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 455
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_0

    .line 447
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_11
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 448
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->constructorInvocationTypeArg(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 450
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_0

    .line 438
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_12
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    iget v4, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 439
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->typeParameterBound(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;III)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 445
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_0

    .line 433
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_13
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 434
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->typeParameter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 436
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_0

    .line 428
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_14
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 429
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->classExtends(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 431
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_0

    .line 423
    .end local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :pswitch_15
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    iget v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 424
    invoke-static {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->typeCast(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 426
    .restart local v0    # "res":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    nop

    .line 536
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createCompoundFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute$Compound;
    .locals 6
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 118
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 120
    .local v0, "values":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/util/Pair<Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Attribute;>;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    nop

    .line 122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationValue;

    invoke-static {v3, v4, p1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->attributeFromAnnotationValue(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/AnnotationValue;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v3

    .line 123
    .local v3, "attribute":Lcom/sun/tools/javac/code/Attribute;
    new-instance v4, Lcom/sun/tools/javac/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {v4, v5, v3}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 124
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    .end local v3    # "attribute":Lcom/sun/tools/javac/code/Attribute;
    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$Compound;

    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-direct {v1, v2, v0}, Lcom/sun/tools/javac/code/Attribute$Compound;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    return-object v1
.end method

.method public static createTypeCompoundFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .locals 6
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 138
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 140
    .local v0, "values":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/util/Pair<Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Attribute;>;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 141
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    nop

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationValue;

    invoke-static {v3, v4, p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->attributeFromAnnotationValue(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/AnnotationValue;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v3

    .line 143
    .local v3, "attribute":Lcom/sun/tools/javac/code/Attribute;
    new-instance v4, Lcom/sun/tools/javac/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {v4, v5, v3}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 144
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    .end local v3    # "attribute":Lcom/sun/tools/javac/code/Attribute;
    goto :goto_0

    .line 145
    :cond_0
    new-instance v1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-direct {v1, v2, v0, p1}, Lcom/sun/tools/javac/code/Attribute$TypeCompound;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)V

    return-object v1
.end method

.method public static fieldTAPosition(I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 1
    .param p0, "pos"    # I

    .line 346
    invoke-static {p0}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->field(I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method public static isSameTAPosition(Lcom/sun/tools/javac/code/TypeAnnotationPosition;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Z
    .locals 2
    .param p0, "p1"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .param p1, "p2"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    .line 81
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->isSameTAPositionExceptTreePos(Lcom/sun/tools/javac/code/TypeAnnotationPosition;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    iget v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameTAPositionExceptTreePos(Lcom/sun/tools/javac/code/TypeAnnotationPosition;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Z
    .locals 2
    .param p0, "p1"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .param p1, "p2"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    .line 93
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    iget-object v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    iget v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    iget v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget-object v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    iget v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->isValidOffset:Z

    iget-boolean v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->isValidOffset:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->offset:I

    iget v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->offset:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    iget-object v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 100
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    iget-object v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    .line 101
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    iget-object v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    .line 102
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    iget-object v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    .line 103
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->hasExceptionIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->hasExceptionIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->getExceptionIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->getExceptionIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0
.end method

.method public static isTypeCompoundContained(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Ljavax/lang/model/util/Types;)Z
    .locals 4
    .param p1, "tc"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .param p2, "types"    # Ljavax/lang/model/util/Types;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            "Ljavax/lang/model/util/Types;",
            ")Z"
        }
    .end annotation

    .line 50
    .local p0, "list":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 51
    .local v1, "rawat":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v2, v1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->contentEquals(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Name;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->values:Lcom/sun/tools/javac/util/List;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->values:Lcom/sun/tools/javac/util/List;

    .line 57
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    .line 58
    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->isSameTAPositionExceptTreePos(Lcom/sun/tools/javac/code/TypeAnnotationPosition;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    .end local v1    # "rawat":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static methodParameterTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 1
    .param p0, "pidx"    # I
    .param p1, "pos"    # I

    .line 324
    invoke-static {p0, p1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodParameter(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method public static methodReceiverTAPosition(I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 1
    .param p0, "pos"    # I

    .line 313
    invoke-static {p0}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodReceiver(I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method public static methodReturnTAPosition(I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 1
    .param p0, "pos"    # I

    .line 303
    invoke-static {p0}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodReturn(I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method public static methodThrowsTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .param p0, "tidx"    # I
    .param p1, "pos"    # I

    .line 335
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lcom/sun/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodThrows(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method public static methodTypeParameterBoundTAPosition(III)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .param p0, "tpidx"    # I
    .param p1, "bndidx"    # I
    .param p2, "pos"    # I

    .line 409
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lcom/sun/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodTypeParameterBound(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;III)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method public static methodTypeParameterTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .param p0, "tpidx"    # I
    .param p1, "pos"    # I

    .line 381
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lcom/sun/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->methodTypeParameter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method public static typeParameterBoundTAPosition(III)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .param p0, "tpidx"    # I
    .param p1, "bndidx"    # I
    .param p2, "pos"    # I

    .line 395
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lcom/sun/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->typeParameterBound(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;III)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method public static typeParameterTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .param p0, "tpidx"    # I
    .param p1, "pos"    # I

    .line 368
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lcom/sun/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->typeParameter(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCLambda;II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    return-object v0
.end method

.method public static unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;
    .locals 2
    .param p0, "in"    # Ljavax/lang/model/type/TypeMirror;

    .line 546
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 547
    .local v0, "impl":Lcom/sun/tools/javac/code/Type;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    return-object v1

    .line 552
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->stripMetadata()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    return-object v1
.end method

.method public static unknownTAPosition()Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .locals 1

    .line 293
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->unknown:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    return-object v0
.end method
