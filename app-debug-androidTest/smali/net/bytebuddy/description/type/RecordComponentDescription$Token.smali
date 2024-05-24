.class public Lnet/bytebuddy/description/type/RecordComponentDescription$Token;
.super Ljava/lang/Object;
.source "RecordComponentDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "Lnet/bytebuddy/description/type/RecordComponentDescription$Token;",
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

.field private final name:Ljava/lang/String;

.field private final type:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    .line 510
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 519
    .local p3, "annotations":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->name:Ljava/lang/String;

    .line 521
    iput-object p2, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 522
    iput-object p3, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->annotations:Ljava/util/List;

    .line 523
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 485
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/RecordComponentDescription$Token;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$Token;"
        }
    .end annotation

    .line 556
    .local p1, "visitor":Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;, "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->name:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v2, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 570
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 571
    return v0

    .line 572
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 575
    :cond_1
    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    .line 576
    .local v2, "token":Lnet/bytebuddy/description/type/RecordComponentDescription$Token;
    iget-object v3, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->name:Ljava/lang/String;

    iget-object v4, v2, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v4, v2, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 577
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->annotations:Ljava/util/List;

    iget-object v4, v2, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->annotations:Ljava/util/List;

    .line 578
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 576
    :goto_0
    return v0

    .line 573
    .end local v2    # "token":Lnet/bytebuddy/description/type/RecordComponentDescription$Token;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 549
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 540
    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 562
    iget v0, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/type/RecordComponentDescription$Token;
    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 563
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 564
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->annotations:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 565
    .end local v2    # "result":I
    .restart local v1    # "result":I
    move v4, v1

    move-object v1, v0

    move v0, v4

    .end local v0    # "this":Lnet/bytebuddy/description/type/RecordComponentDescription$Token;
    .end local v1    # "result":I
    :goto_0
    if-nez v0, :cond_1

    iget v0, v1, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, v1, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->hashCode:I

    :goto_1
    return v0
.end method
