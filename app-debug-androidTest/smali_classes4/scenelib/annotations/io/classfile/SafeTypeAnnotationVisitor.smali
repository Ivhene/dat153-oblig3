.class public Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;
.super Ljava/lang/Object;
.source "SafeTypeAnnotationVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# instance fields
.field private final xBoundIndexArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xIndexArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xLengthArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xLocationArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final xLocationLengthArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private xNameAndArgsCount:I

.field private final xOffsetArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xParamIndexArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xStartPcArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xTargetTypeArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xTypeIndexArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;)V
    .locals 2
    .param p1, "xav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xIndexArgs:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLengthArgs:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationArgs:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationLengthArgs:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xOffsetArgs:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xStartPcArgs:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xTargetTypeArgs:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xParamIndexArgs:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xBoundIndexArgs:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xTypeIndexArgs:Ljava/util/List;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xNameAndArgsCount:I

    .line 79
    return-void
.end method

.method private appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p2, "idealLength"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 318
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 319
    const-string v0, "\nInvalid method calls: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v0, " was called "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    const-string v0, " times, but should have only been called "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v0, " times"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_0
    return-void
.end method

.method private checkListSize(IIIIIIIIILjava/lang/String;)V
    .locals 4
    .param p1, "correctLengthIndex"    # I
    .param p2, "correctLengthLength"    # I
    .param p3, "correctLengthLocation"    # I
    .param p4, "correctLengthLocationLength"    # I
    .param p5, "correctLengthOffset"    # I
    .param p6, "correctLengthStartPc"    # I
    .param p7, "correctLengthParamIndex"    # I
    .param p8, "correctLengthBoundIndex"    # I
    .param p9, "correctLengthTypeIndex"    # I
    .param p10, "msg"    # Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xIndexArgs:Ljava/util/List;

    const-string v2, "visitXIndex"

    invoke-direct {p0, v1, p1, v2, v0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 351
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLengthArgs:Ljava/util/List;

    const-string v2, "visitXLength"

    invoke-direct {p0, v1, p2, v2, v0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 352
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationArgs:Ljava/util/List;

    const-string v2, "visitXLocation"

    invoke-direct {p0, v1, p3, v2, v0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 353
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationLengthArgs:Ljava/util/List;

    const-string v2, "visitXLocationLength"

    invoke-direct {p0, v1, p4, v2, v0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 355
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xOffsetArgs:Ljava/util/List;

    const-string v2, "visitXOffset"

    invoke-direct {p0, v1, p5, v2, v0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 356
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xStartPcArgs:Ljava/util/List;

    const-string v2, "visitXStartPc"

    invoke-direct {p0, v1, p6, v2, v0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 357
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xParamIndexArgs:Ljava/util/List;

    const-string v2, "visitXParamIndex"

    invoke-direct {p0, v1, p7, v2, v0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 358
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xBoundIndexArgs:Ljava/util/List;

    const-string v2, "visitXBoundIndex"

    invoke-direct {p0, v1, p8, v2, v0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 359
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xTypeIndexArgs:Ljava/util/List;

    const-string v2, "VisitXTypeIndex"

    invoke-direct {p0, v1, p9, v2, v0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->appendMessage(Ljava/util/List;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 367
    return-void

    .line 365
    :cond_0
    new-instance v2, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkX()V
    .locals 14

    .line 218
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xTargetTypeArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 223
    iget v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xNameAndArgsCount:I

    if-ne v0, v1, :cond_1

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "c":I
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationLengthArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 233
    iget-object v1, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationLengthArgs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 236
    :cond_0
    sget-object v1, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    iget-object v3, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xTargetTypeArgs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/sun/tools/javac/code/TargetType;->fromTargetTypeValue(I)Lcom/sun/tools/javac/code/TargetType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 300
    new-instance v1, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown target type given: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xTargetTypeArgs:Ljava/util/List;

    .line 301
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :pswitch_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v13, "Invalid exception type in throws annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 298
    goto/16 :goto_0

    .line 292
    :pswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v13, "Invalid class extends/implements annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 294
    goto/16 :goto_0

    .line 290
    :pswitch_2
    goto/16 :goto_0

    .line 282
    :pswitch_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "Invalid method type parameter bound annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 284
    goto/16 :goto_0

    .line 278
    :pswitch_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Invalid method type parameter annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 280
    goto/16 :goto_0

    .line 274
    :pswitch_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "Invalid class type parameter bound annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 276
    goto/16 :goto_0

    .line 270
    :pswitch_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Invalid class type parameter annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 272
    goto/16 :goto_0

    .line 266
    :pswitch_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Invalid field annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 268
    goto/16 :goto_0

    .line 262
    :pswitch_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Invalid method parameter annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 264
    goto/16 :goto_0

    .line 258
    :pswitch_9
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Invalid method return type annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 260
    goto :goto_0

    .line 254
    :pswitch_a
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Invalid local variable annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 256
    goto :goto_0

    .line 250
    :pswitch_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Invalid method receiver annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 252
    goto :goto_0

    .line 246
    :pswitch_c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Invalid object creation annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 248
    goto :goto_0

    .line 242
    :pswitch_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Invalid type test annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 244
    goto :goto_0

    .line 238
    :pswitch_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v13, "Invalid typecast annotation:"

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v3 .. v13}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkListSize(IIIIIIIIILjava/lang/String;)V

    .line 240
    nop

    .line 303
    :goto_0
    return-void

    .line 224
    .end local v0    # "c":I
    :cond_1
    new-instance v0, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name and args count should  be visited 1 time, actually visited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xNameAndArgsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_2
    new-instance v0, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;

    const-string v1, "More than one target type visited."

    invoke-direct {v0, v1}, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .locals 2

    .line 191
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xTargetTypeArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->checkX()V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xIndexArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLengthArgs:Ljava/util/List;

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationArgs:Ljava/util/List;

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationLengthArgs:Ljava/util/List;

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xOffsetArgs:Ljava/util/List;

    .line 200
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xStartPcArgs:Ljava/util/List;

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :goto_0
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 207
    return-void

    .line 202
    :cond_1
    new-instance v0, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;

    const-string v1, "No target type was specified, yet other visitX* methods were still called."

    invoke-direct {v0, v1}, Lscenelib/annotations/io/classfile/InvalidTypeAnnotationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public visitXBoundIndex(I)V
    .locals 2
    .param p1, "bound_index"    # I

    .line 155
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 156
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xBoundIndexArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXBoundIndex(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public visitXExceptionIndex(I)V
    .locals 0
    .param p1, "exception_index"    # I

    .line 170
    return-void
.end method

.method public visitXIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 103
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xIndexArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXIndex(I)V

    .line 105
    return-void
.end method

.method public visitXLength(I)V
    .locals 2
    .param p1, "length"    # I

    .line 109
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLengthArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLength(I)V

    .line 111
    return-void
.end method

.method public visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V
    .locals 1
    .param p1, "location"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 115
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V

    .line 117
    return-void
.end method

.method public visitXLocationLength(I)V
    .locals 2
    .param p1, "location_length"    # I

    .line 121
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xLocationLengthArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocationLength(I)V

    .line 123
    return-void
.end method

.method public visitXNameAndArgsSize()V
    .locals 1

    .line 174
    iget v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xNameAndArgsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xNameAndArgsCount:I

    .line 175
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXNameAndArgsSize()V

    .line 176
    return-void
.end method

.method public visitXNumEntries(I)V
    .locals 0
    .param p1, "num_entries"    # I

    .line 133
    return-void
.end method

.method public visitXOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 127
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xOffsetArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXOffset(I)V

    .line 129
    return-void
.end method

.method public visitXParamIndex(I)V
    .locals 2
    .param p1, "param_index"    # I

    .line 149
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xParamIndexArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXParamIndex(I)V

    .line 151
    return-void
.end method

.method public visitXStartPc(I)V
    .locals 2
    .param p1, "start_pc"    # I

    .line 137
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xStartPcArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXStartPc(I)V

    .line 139
    return-void
.end method

.method public visitXTargetType(I)V
    .locals 2
    .param p1, "target_type"    # I

    .line 143
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xTargetTypeArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTargetType(I)V

    .line 145
    return-void
.end method

.method public visitXTypeIndex(I)V
    .locals 2
    .param p1, "type_index"    # I

    .line 163
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xTypeIndexArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTypeIndex(I)V

    .line 165
    return-void
.end method
