.class Lscenelib/annotations/io/ASTIndex$1;
.super Lcom/sun/source/util/SimpleTreeVisitor;
.source "ASTIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/io/ASTIndex;-><init>(Lcom/sun/source/tree/CompilationUnitTree;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/SimpleTreeVisitor<",
        "Ljava/lang/Void;",
        "Lscenelib/annotations/io/ASTRecord;",
        ">;"
    }
.end annotation


# instance fields
.field counters:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field inMethod:Ljava/lang/String;

.field final synthetic this$0:Lscenelib/annotations/io/ASTIndex;


# direct methods
.method constructor <init>(Lscenelib/annotations/io/ASTIndex;)V
    .locals 1
    .param p1, "this$0"    # Lscenelib/annotations/io/ASTIndex;

    .line 108
    iput-object p1, p0, Lscenelib/annotations/io/ASTIndex$1;->this$0:Lscenelib/annotations/io/ASTIndex;

    invoke-direct {p0}, Lcom/sun/source/util/SimpleTreeVisitor;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/io/ASTIndex$1;->counters:Ljava/util/Deque;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lscenelib/annotations/io/ASTIndex$1;->inMethod:Ljava/lang/String;

    return-void
.end method

.method private save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;
    .param p3, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p4, "sel"    # Ljava/lang/String;

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p2, p3, p4}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    return-void
.end method

.method private save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)V
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;
    .param p3, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p4, "sel"    # Ljava/lang/String;
    .param p5, "arg"    # I

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p2, p3, p4, p5}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

.method private saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V
    .locals 9
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;
    .param p3, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p4, "sel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/sun/source/tree/Tree;",
            ">;",
            "Lscenelib/annotations/io/ASTRecord;",
            "Lcom/sun/source/tree/Tree$Kind;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/sun/source/tree/Tree;>;"
    if-eqz p1, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 131
    .local v0, "node":Lcom/sun/source/tree/Tree;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)V

    .line 132
    .end local v0    # "node":Lcom/sun/source/tree/Tree;
    move v7, v8

    goto :goto_0

    .line 134
    .end local v8    # "i":I
    :cond_0
    return-void
.end method

.method private saveClass(Lcom/sun/source/tree/ClassTree;)V
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;

    .line 137
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 138
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "className":Ljava/lang/String;
    new-instance v7, Lscenelib/annotations/io/ASTRecord;

    iget-object v1, p0, Lscenelib/annotations/io/ASTIndex$1;->this$0:Lscenelib/annotations/io/ASTIndex;

    .line 140
    invoke-static {v1}, Lscenelib/annotations/io/ASTIndex;->access$000(Lscenelib/annotations/io/ASTIndex;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v6

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    .line 141
    .local v1, "rec":Lscenelib/annotations/io/ASTRecord;
    iget-object v2, p0, Lscenelib/annotations/io/ASTIndex$1;->counters:Ljava/util/Deque;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 142
    invoke-interface {p1, p0, v1}, Lcom/sun/source/tree/ClassTree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lscenelib/annotations/io/ASTIndex$1;->counters:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 144
    return-void
.end method


# virtual methods
.method public bridge synthetic defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 148
    sget-object v0, Lscenelib/annotations/io/ASTIndex$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    iget-object v0, p0, Lscenelib/annotations/io/ASTIndex$1;->this$0:Lscenelib/annotations/io/ASTIndex;

    invoke-virtual {v0, p1, p2}, Lscenelib/annotations/io/ASTIndex;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    :pswitch_0
    nop

    .line 158
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/AnnotatedTypeTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 164
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 165
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    const-string v2, "annotation"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "underlyingType"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/AnnotationTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 173
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 174
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getAnnotationType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    const-string v2, "type"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 175
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    const-string v2, "argument"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 339
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 340
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 341
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "index"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ArrayTypeTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 572
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/ArrayTypeTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "type"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitAssert(Lcom/sun/source/tree/AssertTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAssert(Lcom/sun/source/tree/AssertTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/AssertTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 191
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 192
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "condition"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 193
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "detail"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/AssignmentTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 199
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 200
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 201
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "variable"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 216
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 217
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "leftOperand"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 218
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "rightOperand"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitBlock(Lcom/sun/source/tree/BlockTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lcom/sun/source/tree/BlockTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 10
    .param p1, "node"    # Lcom/sun/source/tree/BlockTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 224
    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/sun/source/tree/Tree;>;"
    if-eqz v0, :cond_1

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "i":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/sun/source/tree/Tree;

    .line 228
    .local v9, "stmt":Lcom/sun/source/tree/Tree;
    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-static {v3}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    move-object v3, v9

    check-cast v3, Lcom/sun/source/tree/ClassTree;

    invoke-direct {p0, v3}, Lscenelib/annotations/io/ASTIndex$1;->saveClass(Lcom/sun/source/tree/ClassTree;)V

    goto :goto_1

    .line 231
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    const-string v7, "statement"

    move-object v3, p0

    move-object v4, v9

    move-object v5, p2

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)V

    .line 233
    :goto_1
    nop

    .end local v9    # "stmt":Lcom/sun/source/tree/Tree;
    add-int/lit8 v1, v1, 0x1

    .line 234
    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitCase(Lcom/sun/source/tree/CaseTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCase(Lcom/sun/source/tree/CaseTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/CaseTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 241
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 242
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 243
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getStatements()Ljava/util/List;

    move-result-object v1

    const-string v2, "statement"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitCatch(Lcom/sun/source/tree/CatchTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCatch(Lcom/sun/source/tree/CatchTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/CatchTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 249
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 250
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    const-string v2, "block"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 251
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v1

    const-string v2, "parameter"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitClass(Lcom/sun/source/tree/ClassTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 17
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 257
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    .line 258
    .local v8, "kind":Lcom/sun/source/tree/Tree$Kind;
    const/4 v9, 0x0

    .line 259
    .local v9, "i":I
    iget-object v0, v6, Lscenelib/annotations/io/ASTIndex$1;->this$0:Lscenelib/annotations/io/ASTIndex;

    invoke-static {v0}, Lscenelib/annotations/io/ASTIndex;->access$100(Lscenelib/annotations/io/ASTIndex;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v7, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Name;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v1

    const-string v4, "bound"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)V

    .line 263
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v0

    const-string v1, "bound"

    invoke-direct {v6, v0, v7, v8, v1}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeParameter"

    invoke-direct {v6, v0, v7, v8, v1}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 266
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v9

    .end local v9    # "i":I
    .local v5, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sun/source/tree/Tree;

    .line 267
    .local v9, "member":Lcom/sun/source/tree/Tree;
    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    .line 268
    const-string v4, "initializer"

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "i":I
    .local v11, "i":I
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)V

    move v5, v11

    goto :goto_1

    .line 269
    .end local v11    # "i":I
    .restart local v5    # "i":I
    :cond_1
    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    invoke-static {v0}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    move-object v0, v9

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 271
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Lscenelib/annotations/io/ASTRecord;

    iget-object v2, v6, Lscenelib/annotations/io/ASTIndex$1;->this$0:Lscenelib/annotations/io/ASTIndex;

    .line 273
    invoke-static {v2}, Lscenelib/annotations/io/ASTIndex;->access$000(Lscenelib/annotations/io/ASTIndex;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v16

    move-object v11, v1

    move-object v13, v0

    invoke-direct/range {v11 .. v16}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    .line 272
    invoke-interface {v9, v6, v1}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v0    # "className":Ljava/lang/String;
    goto :goto_1

    .line 275
    :cond_2
    invoke-interface {v9, v6, v7}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v9    # "member":Lcom/sun/source/tree/Tree;
    :goto_1
    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 529
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getTypeDecls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 530
    .local v1, "tree":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-static {v2}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/ClassTree;

    invoke-direct {p0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveClass(Lcom/sun/source/tree/ClassTree;)V

    .line 533
    .end local v1    # "tree":Lcom/sun/source/tree/Tree;
    :cond_0
    goto :goto_0

    .line 534
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 208
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 209
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 210
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "variable"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ConditionalExpressionTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 284
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 285
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "condition"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 286
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "falseExpression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 287
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "trueExpression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/DoWhileLoopTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 294
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 295
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "condition"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 296
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    const-string v2, "statement"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/EnhancedForLoopTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 310
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 311
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getVariable()Lcom/sun/source/tree/VariableTree;

    move-result-object v1

    const-string v2, "variable"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 312
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 313
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    const-string v2, "statement"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ExpressionStatementTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 303
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionStatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitForLoop(Lcom/sun/source/tree/ForLoopTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitForLoop(Lcom/sun/source/tree/ForLoopTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ForLoopTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 319
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 320
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v1

    const-string v2, "initializer"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 321
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "condition"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 322
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    const-string v2, "statement"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 323
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v1

    const-string v2, "update"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitIf(Lcom/sun/source/tree/IfTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIf(Lcom/sun/source/tree/IfTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/IfTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 329
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 330
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "condition"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 331
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getThenStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    const-string v2, "thenStatement"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 332
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    const-string v2, "elseStatement"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/InstanceOfTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 593
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 594
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 595
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    const-string v2, "type"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitIntersectionType(Lcom/sun/source/tree/IntersectionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitIntersectionType(Lcom/sun/source/tree/IntersectionTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersectionType(Lcom/sun/source/tree/IntersectionTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/IntersectionTypeTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 566
    invoke-interface {p1}, Lcom/sun/source/tree/IntersectionTypeTree;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/IntersectionTypeTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "bound"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/LabeledStatementTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 348
    invoke-interface {p1}, Lcom/sun/source/tree/LabeledStatementTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/LabeledStatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "statement"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 11
    .param p1, "node"    # Lcom/sun/source/tree/LambdaExpressionTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 450
    invoke-interface {p1}, Lcom/sun/source/tree/LambdaExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 451
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    iget-object v1, p0, Lscenelib/annotations/io/ASTIndex$1;->inMethod:Ljava/lang/String;

    .line 452
    .local v1, "outMethod":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v2

    .line 453
    .local v2, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/sun/source/tree/Tree;>;"
    if-eqz v2, :cond_1

    .line 454
    const/4 v3, 0x0

    .line 455
    .local v3, "i":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    .line 456
    .local v5, "t":Lcom/sun/source/tree/Tree;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    const-string v7, "parameter"

    invoke-virtual {p2, v0, v7, v3}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v3

    .line 457
    .local v3, "newRec":Lscenelib/annotations/io/ASTRecord;
    invoke-interface {v5}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    .line 458
    .local v8, "newKind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v9, :cond_0

    .line 459
    move-object v7, v5

    check-cast v7, Lcom/sun/source/tree/VariableTree;

    .line 460
    .local v7, "vt":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v7}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v9

    const-string v10, "type"

    invoke-direct {p0, v9, v3, v8, v10}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 461
    invoke-interface {v7}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v9

    const-string v10, "initializer"

    invoke-direct {p0, v9, v3, v8, v10}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, v7, v3}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    .line 463
    .end local v7    # "vt":Lcom/sun/source/tree/VariableTree;
    move v3, v6

    goto :goto_1

    .line 464
    :cond_0
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "i":I
    .local v9, "i":I
    invoke-virtual {p2, v0, v7, v6}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v6

    invoke-interface {v5, p0, v6}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v9

    .line 466
    .end local v5    # "t":Lcom/sun/source/tree/Tree;
    .end local v8    # "newKind":Lcom/sun/source/tree/Tree$Kind;
    .end local v9    # "i":I
    .local v3, "i":I
    :goto_1
    goto :goto_0

    .line 468
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/LambdaExpressionTree;->getBody()Lcom/sun/source/tree/Tree;

    move-result-object v3

    const-string v4, "body"

    invoke-direct {p0, v3, p2, v0, v4}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 469
    iput-object v1, p0, Lscenelib/annotations/io/ASTIndex$1;->inMethod:Ljava/lang/String;

    .line 470
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MemberReferenceTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 496
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 497
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getQualifierExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "qualifierExpression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 499
    invoke-interface {p1}, Lcom/sun/source/tree/MemberReferenceTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    const-string v2, "typeArgument"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 489
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitMethod(Lcom/sun/source/tree/MethodTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 13
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 354
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 355
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v1

    .line 356
    .local v1, "rcvr":Lcom/sun/source/tree/Tree;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v2

    .line 357
    .local v2, "mods":Lcom/sun/source/tree/ModifiersTree;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v3

    .line 358
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    iget-object v4, p0, Lscenelib/annotations/io/ASTIndex$1;->inMethod:Ljava/lang/String;

    .line 359
    .local v4, "outMethod":Ljava/lang/String;
    invoke-static {p1}, Lscenelib/annotations/util/JVMNames;->getJVMMethodName(Lcom/sun/source/tree/MethodTree;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lscenelib/annotations/io/ASTIndex$1;->inMethod:Ljava/lang/String;

    .line 360
    new-instance v5, Lscenelib/annotations/io/ASTRecord;

    iget-object v6, p0, Lscenelib/annotations/io/ASTIndex$1;->this$0:Lscenelib/annotations/io/ASTIndex;

    invoke-static {v6}, Lscenelib/annotations/io/ASTIndex;->access$000(Lscenelib/annotations/io/ASTIndex;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v7

    iget-object v8, p2, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    iget-object v9, p0, Lscenelib/annotations/io/ASTIndex$1;->inMethod:Ljava/lang/String;

    const/4 v10, 0x0

    .line 361
    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v11

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    move-object p2, v5

    .line 362
    if-eqz v2, :cond_0

    .line 363
    const-string v5, "modifiers"

    invoke-direct {p0, v2, p2, v0, v5}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 365
    :cond_0
    const-string v5, "parameter"

    if-eqz v1, :cond_1

    .line 366
    const/4 v6, -0x1

    invoke-virtual {p2, v0, v5, v6}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v6

    invoke-interface {v1, p0, v6}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 369
    iget-object v6, p0, Lscenelib/annotations/io/ASTIndex$1;->this$0:Lscenelib/annotations/io/ASTIndex;

    invoke-static {v6}, Lscenelib/annotations/io/ASTIndex;->access$100(Lscenelib/annotations/io/ASTIndex;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p2, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 370
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v7, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 372
    .local v8, "i":I
    iget-object v9, p0, Lscenelib/annotations/io/ASTIndex$1;->inMethod:Ljava/lang/String;

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/source/tree/Tree;

    .line 374
    .local v10, "param":Lcom/sun/source/tree/Tree;
    if-eqz v10, :cond_2

    .line 375
    move-object v11, v10

    check-cast v11, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v11}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    add-int/lit8 v12, v8, 0x1

    .line 377
    .end local v8    # "i":I
    .local v12, "i":I
    invoke-virtual {p2, v11, v5, v8}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v8

    .line 376
    invoke-interface {v10, p0, v8}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v12

    .line 379
    .end local v10    # "param":Lcom/sun/source/tree/Tree;
    .end local v12    # "i":I
    .restart local v8    # "i":I
    :cond_2
    goto :goto_0

    .line 381
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    :cond_3
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v5

    const-string v6, "type"

    invoke-direct {p0, v5, p2, v0, v6}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 382
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    const-string v6, "typeParameter"

    invoke-direct {p0, v5, p2, v0, v6}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 385
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getThrows()Ljava/util/List;

    move-result-object v5

    const-string v6, "throws"

    invoke-direct {p0, v5, p2, v0, v6}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 386
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v5

    const-string v6, "body"

    invoke-direct {p0, v5, p2, v0, v6}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 387
    iput-object v4, p0, Lscenelib/annotations/io/ASTIndex$1;->inMethod:Ljava/lang/String;

    .line 388
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 182
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 183
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    const-string v2, "typeArgument"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 184
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "methodSelect"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 185
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    const-string v2, "argument"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitModifiers(Lcom/sun/source/tree/ModifiersTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitModifiers(Lcom/sun/source/tree/ModifiersTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ModifiersTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 393
    invoke-interface {p1}, Lcom/sun/source/tree/ModifiersTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 394
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    const-string v2, "annotation"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 400
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    .line 401
    .local v6, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v7

    .line 402
    .local v7, "type":Lcom/sun/source/tree/Tree;
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v8, v0

    .line 404
    .local v8, "n":I
    :cond_0
    const-string v4, "type"

    move-object v0, p0

    move-object v1, v7

    move-object v2, p2

    move-object v3, v6

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)V

    .line 405
    add-int/lit8 v8, v8, -0x1

    if-gtz v8, :cond_0

    .line 406
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    const-string v1, "dimension"

    invoke-direct {p0, v0, p2, v6, v1}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 407
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v0

    const-string v1, "initializer"

    invoke-direct {p0, v0, p2, v6, v1}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 11
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 413
    nop

    .line 414
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 415
    .local v0, "classBody":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    .line 416
    .local v1, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    const-string v3, "enclosingExpression"

    invoke-direct {p0, v2, p2, v1, v3}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 418
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    const-string v3, "typeArgument"

    invoke-direct {p0, v2, p2, v1, v3}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 419
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    const-string v3, "identifier"

    invoke-direct {p0, v2, p2, v1, v3}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 420
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v2

    const-string v3, "argument"

    invoke-direct {p0, v2, p2, v1, v3}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 421
    if-eqz v0, :cond_4

    .line 422
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    .line 423
    .local v2, "name":Ljavax/lang/model/element/Name;
    const/4 v3, 0x0

    .line 424
    .local v3, "className":Ljava/lang/String;
    const-string v4, "$"

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 429
    :cond_0
    iget-object v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 430
    .local v5, "sym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    if-nez v5, :cond_1

    const-string v6, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->toString()Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, "s":Ljava/lang/String;
    :goto_0
    const-string v7, "<anonymous "

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 432
    iget-object v4, p0, Lscenelib/annotations/io/ASTIndex$1;->counters:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 433
    .local v4, "i":I
    iget-object v7, p0, Lscenelib/annotations/io/ASTIndex$1;->counters:Ljava/util/Deque;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 434
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/16 v8, 0xb

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 435
    .end local v4    # "i":I
    goto :goto_2

    .line 436
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 425
    .end local v5    # "sym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v5, p0, Lscenelib/annotations/io/ASTIndex$1;->counters:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 426
    .local v5, "i":I
    iget-object v6, p0, Lscenelib/annotations/io/ASTIndex$1;->counters:Ljava/util/Deque;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    .end local v5    # "i":I
    nop

    .line 439
    :goto_2
    iget-object v4, p0, Lscenelib/annotations/io/ASTIndex$1;->counters:Ljava/util/Deque;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 440
    new-instance v10, Lscenelib/annotations/io/ASTRecord;

    iget-object v4, p0, Lscenelib/annotations/io/ASTIndex$1;->this$0:Lscenelib/annotations/io/ASTIndex;

    .line 441
    invoke-static {v4}, Lscenelib/annotations/io/ASTIndex;->access$000(Lscenelib/annotations/io/ASTIndex;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v9

    move-object v4, v10

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    .line 440
    invoke-virtual {v0, p0, v10}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v4, p0, Lscenelib/annotations/io/ASTIndex$1;->counters:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 444
    .end local v2    # "name":Ljavax/lang/model/element/Name;
    .end local v3    # "className":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ParameterizedTypeTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 550
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 551
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    const-string v2, "type"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 552
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    const-string v2, "typeArgument"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ParenthesizedTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 476
    invoke-interface {p1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/ParenthesizedTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitReturn(Lcom/sun/source/tree/ReturnTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lcom/sun/source/tree/ReturnTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ReturnTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 482
    invoke-interface {p1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/ReturnTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitSwitch(Lcom/sun/source/tree/SwitchTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSwitch(Lcom/sun/source/tree/SwitchTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/SwitchTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 505
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 506
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 507
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object v1

    const-string v2, "case"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/SynchronizedTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 514
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 515
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 516
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    const-string v2, "block"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitThrow(Lcom/sun/source/tree/ThrowTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitThrow(Lcom/sun/source/tree/ThrowTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ThrowTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 522
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitTry(Lcom/sun/source/tree/TryTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTry(Lcom/sun/source/tree/TryTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/TryTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 539
    invoke-interface {p1}, Lcom/sun/source/tree/TryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 540
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v1

    const-string v2, "resource"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 541
    invoke-interface {p1}, Lcom/sun/source/tree/TryTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    const-string v2, "block"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 542
    invoke-interface {p1}, Lcom/sun/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v1

    const-string v2, "catch"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 543
    invoke-interface {p1}, Lcom/sun/source/tree/TryTree;->getFinallyBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    const-string v2, "finallyBlock"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 578
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 579
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    const-string v2, "type"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 580
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/TypeParameterTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 587
    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "bound"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitUnary(Lcom/sun/source/tree/UnaryTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 601
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "expression"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/UnionTypeTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 558
    invoke-interface {p1}, Lcom/sun/source/tree/UnionTypeTree;->getTypeAlternatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/UnionTypeTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "typeAlternative"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->saveAll(Ljava/lang/Iterable;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitVariable(Lcom/sun/source/tree/VariableTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 607
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 608
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    iget-object v1, p2, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 609
    new-instance v1, Lscenelib/annotations/io/ASTRecord;

    iget-object v2, p0, Lscenelib/annotations/io/ASTIndex$1;->this$0:Lscenelib/annotations/io/ASTIndex;

    invoke-static {v2}, Lscenelib/annotations/io/ASTIndex;->access$000(Lscenelib/annotations/io/ASTIndex;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v3

    iget-object v4, p2, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    iget-object v5, p2, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    .line 610
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    move-object p2, v1

    .line 612
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    const-string v2, "type"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 613
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "initializer"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/WhileLoopTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 619
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 620
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "condition"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 621
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    const-string v2, "statement"

    invoke-direct {p0, v1, p2, v0, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p2, Lscenelib/annotations/io/ASTRecord;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/WildcardTree;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 627
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    const-string v2, "bound"

    invoke-direct {p0, v0, p2, v1, v2}, Lscenelib/annotations/io/ASTIndex$1;->save(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTIndex$1;->defaultAction(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
