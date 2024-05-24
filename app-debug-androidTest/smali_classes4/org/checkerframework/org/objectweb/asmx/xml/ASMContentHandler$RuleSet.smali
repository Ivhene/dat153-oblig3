.class final Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;
.super Ljava/lang/Object;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RuleSet"
.end annotation


# instance fields
.field private lpatterns:Ljava/util/List;

.field private rpatterns:Ljava/util/List;

.field private rules:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->rules:Ljava/util/Map;

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->lpatterns:Ljava/util/List;

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->rpatterns:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;

    .line 478
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/Object;

    .line 486
    move-object v0, p1

    .line 487
    .local v0, "pattern":Ljava/lang/String;
    const-string v1, "*/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->lpatterns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    :cond_0
    const-string v1, "/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->rpatterns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->rules:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 503
    .local v0, "n":I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->lpatterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 505
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 506
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->rules:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 508
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 510
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->rpatterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 512
    .restart local v2    # "pattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 513
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->rules:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 515
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 517
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method
