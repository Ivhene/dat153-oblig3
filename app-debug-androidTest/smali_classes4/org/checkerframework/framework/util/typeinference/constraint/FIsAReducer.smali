.class public Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;
.super Ljava/lang/Object;
.source "FIsAReducer.java"

# interfaces
.implements Lorg/checkerframework/framework/util/typeinference/constraint/AFReducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;
    }
.end annotation


# instance fields
.field private final typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field protected final visitor:Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 2
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 34
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;-><init>(Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$1;)V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;->visitor:Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;

    .line 27
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    return-object v0
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

    .line 39
    .local p2, "newConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    instance-of v0, p1, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    .line 41
    .local v0, "fIsA":Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;
    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;->visitor:Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;

    iget-object v2, v0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;->formalParameter:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v3, v0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;->argument:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v1, v2, v3, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/4 v1, 0x1

    return v1

    .line 45
    .end local v0    # "fIsA":Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
