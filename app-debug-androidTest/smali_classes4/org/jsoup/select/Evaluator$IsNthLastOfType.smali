.class public Lorg/jsoup/select/Evaluator$IsNthLastOfType;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNthLastOfType"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 544
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    .line 545
    return-void
.end method


# virtual methods
.method protected calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 5
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "pos":I
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 551
    .local v1, "family":Lorg/jsoup/select/Elements;
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result v2

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 552
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 551
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .locals 1

    .line 559
    const-string v0, "nth-last-of-type"

    return-object v0
.end method
