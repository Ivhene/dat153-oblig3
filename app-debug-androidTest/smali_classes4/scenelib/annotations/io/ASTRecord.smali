.class public Lscenelib/annotations/io/ASTRecord;
.super Ljava/lang/Object;
.source "ASTRecord.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lscenelib/annotations/io/ASTRecord;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final ast:Lcom/sun/source/tree/CompilationUnitTree;

.field public final astPath:Lscenelib/annotations/io/ASTPath;

.field public final className:Ljava/lang/String;

.field public final methodName:Ljava/lang/String;

.field public final varName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V
    .locals 5
    .param p1, "ast"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "varName"    # Ljava/lang/String;
    .param p5, "astPath"    # Lscenelib/annotations/io/ASTPath;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lscenelib/annotations/io/ASTRecord;->ast:Lcom/sun/source/tree/CompilationUnitTree;

    .line 49
    iput-object p2, p0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    .line 53
    if-eqz p4, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    if-eqz p3, :cond_2

    .line 56
    invoke-virtual {p5}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v0

    .line 57
    .local v0, "n":I
    if-lez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_2

    .line 58
    invoke-virtual {p5, v1}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_2

    .line 59
    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    new-instance v2, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    const-string v4, "body"

    invoke-direct {v2, v3, v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lscenelib/annotations/io/ASTPath;->add(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    .line 61
    .local v1, "bodyPath":Lscenelib/annotations/io/ASTPath;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p5, v2}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath;->add(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :cond_1
    move-object p5, v1

    .line 65
    .end local v0    # "n":I
    .end local v1    # "bodyPath":Lscenelib/annotations/io/ASTPath;
    :cond_2
    :goto_1
    iput-object p5, p0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 66
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1}, Lscenelib/annotations/io/ASTRecord;->compareTo(Lscenelib/annotations/io/ASTRecord;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lscenelib/annotations/io/ASTRecord;)I
    .locals 6
    .param p1, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 88
    iget-object v0, p0, Lscenelib/annotations/io/ASTRecord;->ast:Lcom/sun/source/tree/CompilationUnitTree;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lscenelib/annotations/io/ASTRecord;->ast:Lcom/sun/source/tree/CompilationUnitTree;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lscenelib/annotations/io/ASTRecord;->ast:Lcom/sun/source/tree/CompilationUnitTree;

    if-nez v4, :cond_2

    move v0, v3

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v4, p1, Lscenelib/annotations/io/ASTRecord;->ast:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :goto_0
    nop

    .line 92
    .local v0, "d":I
    if-nez v0, :cond_f

    .line 93
    iget-object v4, p0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p1, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    iget-object v5, p1, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    if-nez v5, :cond_5

    move v4, v3

    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    :goto_1
    move v0, v4

    .line 96
    if-nez v0, :cond_f

    .line 97
    iget-object v4, p0, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    if-nez v4, :cond_7

    iget-object v4, p1, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    if-nez v4, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v2

    goto :goto_2

    :cond_7
    iget-object v5, p1, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    if-nez v5, :cond_8

    move v4, v3

    goto :goto_2

    .line 99
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    :goto_2
    move v0, v4

    .line 100
    if-nez v0, :cond_f

    .line 101
    iget-object v4, p0, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    if-nez v4, :cond_a

    iget-object v4, p1, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    if-nez v4, :cond_9

    move v4, v1

    goto :goto_3

    :cond_9
    move v4, v2

    goto :goto_3

    :cond_a
    iget-object v5, p1, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    if-nez v5, :cond_b

    move v4, v3

    goto :goto_3

    .line 103
    :cond_b
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    :goto_3
    move v0, v4

    .line 104
    if-nez v0, :cond_f

    .line 105
    iget-object v4, p0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    if-nez v4, :cond_d

    iget-object v3, p1, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    iget-object v1, p1, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_4

    .line 107
    :cond_e
    invoke-virtual {v4, v1}, Lscenelib/annotations/io/ASTPath;->compareTo(Lscenelib/annotations/io/ASTPath;)I

    move-result v1

    :goto_4
    move v0, v1

    .line 112
    :cond_f
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 79
    instance-of v0, p1, Lscenelib/annotations/io/ASTRecord;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTRecord;->equals(Lscenelib/annotations/io/ASTRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/io/ASTRecord;)Z
    .locals 1
    .param p1, "astRecord"    # Lscenelib/annotations/io/ASTRecord;

    .line 83
    invoke-virtual {p0, p1}, Lscenelib/annotations/io/ASTRecord;->compareTo(Lscenelib/annotations/io/ASTRecord;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;
    .locals 1
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "sel"    # Ljava/lang/String;

    .line 180
    new-instance v0, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-direct {v0, p1, p2}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTRecord;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    return-object v0
.end method

.method public extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;
    .locals 2
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "sel"    # Ljava/lang/String;
    .param p3, "arg"    # I

    .line 184
    new-instance v0, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTRecord;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    return-object v0
.end method

.method public extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTRecord;
    .locals 7
    .param p1, "entry"    # Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 175
    new-instance v6, Lscenelib/annotations/io/ASTRecord;

    iget-object v1, p0, Lscenelib/annotations/io/ASTRecord;->ast:Lcom/sun/source/tree/CompilationUnitTree;

    iget-object v2, p0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    iget-object v3, p0, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    iget-object v4, p0, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    iget-object v0, p0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 176
    invoke-virtual {v0, p1}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    .line 175
    return-object v6
.end method

.method public hashCode()I
    .locals 5

    .line 117
    iget-object v0, p0, Lscenelib/annotations/io/ASTRecord;->ast:Lcom/sun/source/tree/CompilationUnitTree;

    iget-object v1, p0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    iget-object v2, p0, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    iget-object v3, p0, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    iget-object v4, p0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/sun/source/util/TreePath;)Z
    .locals 8
    .param p1, "treePath"    # Lcom/sun/source/util/TreePath;

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "clazz":Ljava/lang/String;
    const/4 v1, 0x0

    .line 126
    .local v1, "meth":Ljava/lang/String;
    const/4 v2, 0x0

    .line 127
    .local v2, "var":Ljava/lang/String;
    const/4 v3, 0x0

    .line 128
    .local v3, "matchVars":Z
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 129
    .local v4, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/sun/source/tree/Tree;>;"
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .local v6, "tree":Lcom/sun/source/tree/Tree;
    invoke-interface {v4, v6}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .end local v6    # "tree":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 130
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 131
    invoke-interface {v4}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    .line 132
    .local v5, "tree":Lcom/sun/source/tree/Tree;
    sget-object v6, Lscenelib/annotations/io/ASTRecord$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v5}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 155
    const/4 v3, 0x0

    .line 156
    goto :goto_1

    .line 148
    :pswitch_0
    if-eqz v3, :cond_3

    .line 149
    if-nez v2, :cond_1

    .line 150
    move-object v6, v5

    check-cast v6, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v6}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    const/4 v3, 0x0

    goto :goto_2

    .line 149
    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 143
    :pswitch_1
    if-nez v1, :cond_2

    .line 144
    move-object v6, v5

    check-cast v6, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v6}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    const/4 v3, 0x0

    .line 146
    goto :goto_2

    .line 143
    :cond_2
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 137
    :pswitch_2
    move-object v6, v5

    check-cast v6, Lcom/sun/source/tree/ClassTree;

    invoke-interface {v6}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    const/4 v1, 0x0

    .line 139
    const/4 v2, 0x0

    .line 140
    const/4 v3, 0x1

    .line 141
    nop

    .line 158
    .end local v5    # "tree":Lcom/sun/source/tree/Tree;
    :cond_3
    :goto_2
    goto :goto_1

    .line 159
    :cond_4
    iget-object v5, p0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    if-nez v5, :cond_5

    if-nez v1, :cond_7

    goto :goto_3

    .line 160
    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_3
    iget-object v5, p0, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    if-nez v5, :cond_6

    if-nez v2, :cond_7

    goto :goto_4

    .line 161
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_4
    iget-object v5, p0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 162
    invoke-virtual {v5, p1}, Lscenelib/annotations/io/ASTPath;->matches(Lcom/sun/source/util/TreePath;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    .line 159
    :goto_5
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public newArrayLevel(I)Lscenelib/annotations/io/ASTRecord;
    .locals 7
    .param p1, "depth"    # I

    .line 69
    new-instance v6, Lscenelib/annotations/io/ASTRecord;

    iget-object v1, p0, Lscenelib/annotations/io/ASTRecord;->ast:Lcom/sun/source/tree/CompilationUnitTree;

    iget-object v2, p0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    iget-object v3, p0, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    iget-object v4, p0, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    iget-object v0, p0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 70
    invoke-virtual {v0, p1}, Lscenelib/annotations/io/ASTPath;->extendNewArray(I)Lscenelib/annotations/io/ASTPath;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    .line 69
    return-object v6
.end method

.method public replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;
    .locals 7
    .param p1, "newPath"    # Lscenelib/annotations/io/ASTPath;

    .line 74
    new-instance v6, Lscenelib/annotations/io/ASTRecord;

    iget-object v1, p0, Lscenelib/annotations/io/ASTRecord;->ast:Lcom/sun/source/tree/CompilationUnitTree;

    iget-object v2, p0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    iget-object v3, p0, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    iget-object v4, p0, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    .line 168
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v2

    .line 169
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 170
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method
