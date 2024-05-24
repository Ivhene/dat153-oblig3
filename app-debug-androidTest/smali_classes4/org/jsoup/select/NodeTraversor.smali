.class public Lorg/jsoup/select/NodeTraversor;
.super Ljava/lang/Object;
.source "NodeTraversor.java"


# instance fields
.field private visitor:Lorg/jsoup/select/NodeVisitor;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/NodeVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/jsoup/select/NodeVisitor;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/jsoup/select/NodeTraversor;->visitor:Lorg/jsoup/select/NodeVisitor;

    .line 24
    return-void
.end method

.method public static filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 5
    .param p0, "filter"    # Lorg/jsoup/select/NodeFilter;
    .param p1, "root"    # Lorg/jsoup/nodes/Node;

    .line 82
    move-object v0, p1

    .line 83
    .local v0, "node":Lorg/jsoup/nodes/Node;
    const/4 v1, 0x0

    .line 85
    .local v1, "depth":I
    :goto_0
    if-eqz v0, :cond_a

    .line 86
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeFilter;->head(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v2

    .line 87
    .local v2, "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_0

    .line 88
    return-object v2

    .line 90
    :cond_0
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    if-lez v3, :cond_1

    .line 91
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-nez v3, :cond_5

    if-lez v1, :cond_5

    .line 98
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-eq v2, v3, :cond_2

    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_3

    .line 99
    :cond_2
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v2

    .line 100
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_3

    .line 101
    return-object v2

    .line 103
    :cond_3
    move-object v3, v0

    .line 104
    .local v3, "prev":Lorg/jsoup/nodes/Node;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 105
    add-int/lit8 v1, v1, -0x1

    .line 106
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v4, :cond_4

    .line 107
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->remove()V

    .line 108
    :cond_4
    sget-object v2, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 109
    .end local v3    # "prev":Lorg/jsoup/nodes/Node;
    goto :goto_1

    .line 111
    :cond_5
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-eq v2, v3, :cond_6

    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_7

    .line 112
    :cond_6
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v2

    .line 113
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_7

    .line 114
    return-object v2

    .line 116
    :cond_7
    if-ne v0, p1, :cond_8

    .line 117
    return-object v2

    .line 118
    :cond_8
    move-object v3, v0

    .line 119
    .restart local v3    # "prev":Lorg/jsoup/nodes/Node;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 120
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v4, :cond_9

    .line 121
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->remove()V

    .line 122
    .end local v2    # "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    .end local v3    # "prev":Lorg/jsoup/nodes/Node;
    :cond_9
    goto :goto_0

    .line 124
    :cond_a
    sget-object v2, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object v2
.end method

.method public static filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/select/Elements;)V
    .locals 4
    .param p0, "filter"    # Lorg/jsoup/select/NodeFilter;
    .param p1, "elements"    # Lorg/jsoup/select/Elements;

    .line 133
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 134
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 136
    .local v1, "el":Lorg/jsoup/nodes/Element;
    invoke-static {p0, v1}, Lorg/jsoup/select/NodeTraversor;->filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v2

    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_0

    .line 137
    goto :goto_1

    .line 136
    .end local v1    # "el":Lorg/jsoup/nodes/Element;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    :goto_1
    return-void
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V
    .locals 3
    .param p0, "visitor"    # Lorg/jsoup/select/NodeVisitor;
    .param p1, "root"    # Lorg/jsoup/nodes/Node;

    .line 41
    move-object v0, p1

    .line 42
    .local v0, "node":Lorg/jsoup/nodes/Node;
    const/4 v1, 0x0

    .line 44
    .local v1, "depth":I
    :goto_0
    if-eqz v0, :cond_3

    .line 45
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeVisitor;->head(Lorg/jsoup/nodes/Node;I)V

    .line 46
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v2

    if-nez v2, :cond_1

    if-lez v1, :cond_1

    .line 51
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 52
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 53
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 55
    :cond_1
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 56
    if-ne v0, p1, :cond_2

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_3
    :goto_2
    return-void
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/select/Elements;)V
    .locals 2
    .param p0, "visitor"    # Lorg/jsoup/select/NodeVisitor;
    .param p1, "elements"    # Lorg/jsoup/select/Elements;

    .line 69
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 70
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 72
    .local v1, "el":Lorg/jsoup/nodes/Element;
    invoke-static {p0, v1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .end local v1    # "el":Lorg/jsoup/nodes/Element;
    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public traverse(Lorg/jsoup/nodes/Node;)V
    .locals 1
    .param p1, "root"    # Lorg/jsoup/nodes/Node;

    .line 32
    iget-object v0, p0, Lorg/jsoup/select/NodeTraversor;->visitor:Lorg/jsoup/select/NodeVisitor;

    invoke-static {v0, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 33
    return-void
.end method
