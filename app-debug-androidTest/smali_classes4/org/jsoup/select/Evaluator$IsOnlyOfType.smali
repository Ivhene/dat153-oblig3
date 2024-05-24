.class public final Lorg/jsoup/select/Evaluator$IsOnlyOfType;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsOnlyOfType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 608
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 8
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .line 611
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 612
    .local v0, "p":Lorg/jsoup/nodes/Element;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v2, v0, Lorg/jsoup/nodes/Document;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 614
    :cond_0
    const/4 v2, 0x0

    .line 615
    .local v2, "pos":I
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v3

    .line 616
    .local v3, "family":Lorg/jsoup/select/Elements;
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 617
    .local v5, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v6

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 618
    .end local v5    # "el":Lorg/jsoup/nodes/Element;
    :cond_1
    goto :goto_0

    .line 619
    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    move v1, v4

    :cond_3
    return v1

    .line 612
    .end local v2    # "pos":I
    .end local v3    # "family":Lorg/jsoup/select/Elements;
    :cond_4
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 623
    const-string v0, ":only-of-type"

    return-object v0
.end method
