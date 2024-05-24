.class public Lorg/checkerframework/framework/type/VisitorState;
.super Ljava/lang/Object;
.source "VisitorState.java"


# instance fields
.field private act:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

.field private assignmentcontext:Lorg/checkerframework/javacutil/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private ct:Lcom/sun/source/tree/ClassTree;

.field private mrt:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

.field private mt:Lcom/sun/source/tree/MethodTree;

.field private path:Lcom/sun/source/util/TreePath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssignmentContext()Lorg/checkerframework/javacutil/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/checkerframework/framework/type/VisitorState;->assignmentcontext:Lorg/checkerframework/javacutil/Pair;

    return-object v0
.end method

.method public getClassTree()Lcom/sun/source/tree/ClassTree;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/checkerframework/framework/type/VisitorState;->ct:Lcom/sun/source/tree/ClassTree;

    return-object v0
.end method

.method public getClassType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/checkerframework/framework/type/VisitorState;->act:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public getMethodReceiver()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/checkerframework/framework/type/VisitorState;->mrt:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public getMethodTree()Lcom/sun/source/tree/MethodTree;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/checkerframework/framework/type/VisitorState;->mt:Lcom/sun/source/tree/MethodTree;

    return-object v0
.end method

.method public getPath()Lcom/sun/source/util/TreePath;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/checkerframework/framework/type/VisitorState;->path:Lcom/sun/source/util/TreePath;

    return-object v0
.end method

.method public setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "assCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iput-object p1, p0, Lorg/checkerframework/framework/type/VisitorState;->assignmentcontext:Lorg/checkerframework/javacutil/Pair;

    .line 54
    return-void
.end method

.method public setClassTree(Lcom/sun/source/tree/ClassTree;)V
    .locals 0
    .param p1, "ct"    # Lcom/sun/source/tree/ClassTree;

    .line 39
    iput-object p1, p0, Lorg/checkerframework/framework/type/VisitorState;->ct:Lcom/sun/source/tree/ClassTree;

    .line 40
    return-void
.end method

.method public setClassType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V
    .locals 0
    .param p1, "act"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 34
    iput-object p1, p0, Lorg/checkerframework/framework/type/VisitorState;->act:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 35
    return-void
.end method

.method public setMethodReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V
    .locals 0
    .param p1, "mrt"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 44
    iput-object p1, p0, Lorg/checkerframework/framework/type/VisitorState;->mrt:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 45
    return-void
.end method

.method public setMethodTree(Lcom/sun/source/tree/MethodTree;)V
    .locals 0
    .param p1, "mt"    # Lcom/sun/source/tree/MethodTree;

    .line 49
    iput-object p1, p0, Lorg/checkerframework/framework/type/VisitorState;->mt:Lcom/sun/source/tree/MethodTree;

    .line 50
    return-void
.end method

.method public setPath(Lcom/sun/source/util/TreePath;)V
    .locals 0
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 58
    iput-object p1, p0, Lorg/checkerframework/framework/type/VisitorState;->path:Lcom/sun/source/util/TreePath;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lorg/checkerframework/framework/type/VisitorState;->mt:Lcom/sun/source/tree/MethodTree;

    const-string v2, "null"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/checkerframework/framework/type/VisitorState;->mrt:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 105
    iget-object v1, p0, Lorg/checkerframework/framework/type/VisitorState;->ct:Lcom/sun/source/tree/ClassTree;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const/4 v5, 0x2

    aput-object v1, v0, v5

    const/4 v1, 0x3

    iget-object v5, p0, Lorg/checkerframework/framework/type/VisitorState;->act:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    aput-object v5, v0, v1

    .line 107
    iget-object v1, p0, Lorg/checkerframework/framework/type/VisitorState;->assignmentcontext:Lorg/checkerframework/javacutil/Pair;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 108
    iget-object v1, p0, Lorg/checkerframework/framework/type/VisitorState;->assignmentcontext:Lorg/checkerframework/javacutil/Pair;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x5

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/checkerframework/framework/type/VisitorState;->path:Lcom/sun/source/util/TreePath;

    if-eqz v1, :cond_4

    move v3, v4

    .line 109
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 99
    const-string v1, "VisitorState: method %s (%s) / class %s (%s)\n    assignment context %s (%s)\n    path is non-null: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
