.class Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;
.super Ljava/lang/Object;
.source "BaseTypeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/basetype/BaseTypeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckerMessage"
.end annotation


# instance fields
.field final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field final kind:Ljavax/tools/Diagnostic$Kind;

.field final message:Ljava/lang/String;

.field final source:Lcom/sun/source/tree/Tree;


# direct methods
.method private constructor <init>(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "kind"    # Ljavax/tools/Diagnostic$Kind;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "source"    # Lcom/sun/source/tree/Tree;
    .param p4, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->kind:Ljavax/tools/Diagnostic$Kind;

    .line 599
    iput-object p2, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->message:Ljava/lang/String;

    .line 600
    iput-object p3, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->source:Lcom/sun/source/tree/Tree;

    .line 601
    iput-object p4, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 602
    return-void
.end method

.method synthetic constructor <init>(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeChecker$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/tools/Diagnostic$Kind;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/sun/source/tree/Tree;
    .param p4, "x3"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p5, "x4"    # Lorg/checkerframework/common/basetype/BaseTypeChecker$1;

    .line 585
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;-><init>(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 606
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 607
    return v0

    .line 609
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 613
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;

    .line 614
    .local v2, "that":Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->kind:Ljavax/tools/Diagnostic$Kind;

    iget-object v4, v2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->kind:Ljavax/tools/Diagnostic$Kind;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->message:Ljava/lang/String;

    iget-object v4, v2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->message:Ljava/lang/String;

    .line 615
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->source:Lcom/sun/source/tree/Tree;

    iget-object v4, v2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->source:Lcom/sun/source/tree/Tree;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v4, v2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 614
    :goto_0
    return v0

    .line 610
    .end local v2    # "that":Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 622
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->kind:Ljavax/tools/Diagnostic$Kind;

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->message:Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->source:Lcom/sun/source/tree/Tree;

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckerMessage{kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->kind:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 631
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->source:Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    return-object v0
.end method
