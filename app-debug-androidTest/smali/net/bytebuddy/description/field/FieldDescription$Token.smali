.class public Lnet/bytebuddy/description/field/FieldDescription$Token;
.super Ljava/lang/Object;
.source "FieldDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "Lnet/bytebuddy/description/field/FieldDescription$Token;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private transient synthetic hashCode:I

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final type:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p3, "type"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 515
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    .line 516
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p3, "type"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p4, "annotations":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    .line 528
    iput p2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    .line 529
    iput-object p3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 530
    iput-object p4, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    .line 531
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 485
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/field/FieldDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/field/FieldDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/field/FieldDescription$Token;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/field/FieldDescription$Token;"
        }
    .end annotation

    .line 573
    .local p1, "visitor":Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;, "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    iget v2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 575
    invoke-interface {v3, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v4, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    .line 573
    return-object v0
.end method

.method public asSignatureToken(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;
    .locals 5
    .param p1, "declaringType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 586
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;

    const/4 v4, 0x0

    new-array v4, v4, [Lnet/bytebuddy/description/type/TypeVariableToken;

    invoke-direct {v3, p1, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeVariableToken;)V

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 601
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 602
    return v0

    .line 603
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 606
    :cond_1
    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/description/field/FieldDescription$Token;

    .line 607
    .local v2, "token":Lnet/bytebuddy/description/field/FieldDescription$Token;
    iget v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    iget v4, v2, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    iget-object v4, v2, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    .line 608
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v4, v2, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 609
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    iget-object v4, v2, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    .line 610
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 607
    :goto_0
    return v0

    .line 604
    .end local v2    # "token":Lnet/bytebuddy/description/field/FieldDescription$Token;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 566
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 557
    iget v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 548
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 592
    iget v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/field/FieldDescription$Token;
    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 593
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    add-int/2addr v2, v3

    .line 594
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 595
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 596
    move v4, v1

    move-object v1, v0

    move v0, v4

    .end local v0    # "this":Lnet/bytebuddy/description/field/FieldDescription$Token;
    .end local v1    # "result":I
    :goto_0
    if-nez v0, :cond_1

    iget v0, v1, Lnet/bytebuddy/description/field/FieldDescription$Token;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, v1, Lnet/bytebuddy/description/field/FieldDescription$Token;->hashCode:I

    :goto_1
    return v0
.end method
