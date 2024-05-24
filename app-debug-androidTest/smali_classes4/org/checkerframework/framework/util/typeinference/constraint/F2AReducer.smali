.class public Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer;
.super Ljava/lang/Object;
.source "F2AReducer.java"

# interfaces
.implements Lorg/checkerframework/framework/util/typeinference/constraint/AFReducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer$F2AReducingVisitor;
    }
.end annotation


# instance fields
.field protected final visitor:Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer$F2AReducingVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer$F2AReducingVisitor;

    invoke-direct {v0, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer$F2AReducingVisitor;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer;->visitor:Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer$F2AReducingVisitor;

    .line 20
    return-void
.end method


# virtual methods
.method public reduce(Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;Ljava/util/Set;)Z
    .locals 4
    .param p1, "constraint"    # Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)Z"
        }
    .end annotation

    .line 24
    .local p2, "newConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    instance-of v0, p1, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;

    if-eqz v0, :cond_0

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;

    .line 26
    .local v0, "f2A":Lorg/checkerframework/framework/util/typeinference/constraint/F2A;
    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer;->visitor:Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer$F2AReducingVisitor;

    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v3, v0, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v1, v2, v3, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer$F2AReducingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const/4 v1, 0x1

    return v1

    .line 30
    .end local v0    # "f2A":Lorg/checkerframework/framework/util/typeinference/constraint/F2A;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
