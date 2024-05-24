.class abstract Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;
.super Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;
.source "AFReducingVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<",
        "Ljava/lang/Void;",
        "Ljava/util/Set<",
        "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final reducerType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;"
        }
    .end annotation
.end field

.field public final typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")V"
        }
    .end annotation

    .line 50
    .local p1, "reducerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->reducerType:Ljava/lang/Class;

    .line 52
    iput-object p2, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 53
    return-void
.end method


# virtual methods
.method public addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->makeConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public addEqualityConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->makeEqualityConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public addInverseConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->makeInverseConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method protected bridge synthetic defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->reducerType:Ljava/lang/Class;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + Combination:\nsubtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsupertype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nconstraints=[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    const-string v1, ", "

    invoke-static {v1, p3}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method public abstract makeConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
.end method

.method public abstract makeEqualityConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
.end method

.method public abstract makeInverseConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
.end method

.method public bridge synthetic visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 123
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 132
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 140
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 148
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcardAsSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)V

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 177
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 11
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 187
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    nop

    .line 194
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 195
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 196
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/checkerframework/framework/util/CFContext;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 193
    invoke-static {v0, v1, v2}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    return-object v1

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 200
    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->castedAsSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 202
    .local v0, "subAsSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    .line 203
    .local v2, "subTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    .line 204
    .local v3, "superTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 205
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 206
    .local v5, "subTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 211
    .local v6, "superTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_2

    .line 212
    move-object v7, v6

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 214
    .local v7, "superWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v8, v9, :cond_1

    .line 215
    move-object v8, v5

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 216
    .local v8, "subWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-static {v8}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 217
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    invoke-virtual {p0, v9, v10, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 218
    nop

    .line 219
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    .line 218
    invoke-virtual {p0, v9, v10, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addInverseConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 220
    .end local v8    # "subWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    invoke-virtual {p0, v5, v8, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 222
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    invoke-virtual {p0, v8, v5, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addInverseConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 225
    .end local v7    # "superWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :goto_1
    goto :goto_2

    .line 228
    :cond_2
    invoke-virtual {p0, v5, v6, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addEqualityConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 204
    .end local v5    # "subTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "superTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    .end local v4    # "i":I
    :cond_3
    return-object v1

    .line 190
    .end local v0    # "subAsSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "subTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v3    # "superTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_4
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Can\'t infer type arguments when raw types are involved."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 244
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 245
    .local v1, "intersectionBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    instance-of v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 246
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 249
    .end local v1    # "intersectionBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 260
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 270
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 280
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 289
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 297
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcardAsSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)V

    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 310
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 311
    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->castedAsSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 312
    .local v0, "subtypeAsParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 316
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 324
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 333
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitNull_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 348
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitNull_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 360
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitNull_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 417
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 397
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitNull_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 426
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitNull_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 377
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitNull_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 405
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitNull_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 386
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-static {p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 388
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 439
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 457
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 449
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 480
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 523
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 524
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 505
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 492
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 493
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    .line 492
    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->areCorrespondingTypeVariables(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 497
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 514
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcardAsSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)V

    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 468
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitWildcardAsSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)V
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)V"
        }
    .end annotation

    .line 595
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-static {p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 598
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 606
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addInverseConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 607
    return-void
.end method

.method public bridge synthetic visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 534
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 535
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 536
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 544
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 545
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 546
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 554
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 555
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 556
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 564
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 572
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 573
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->addConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 574
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 582
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 586
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;->visitWildcardAsSuperType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)V

    .line 587
    const/4 v0, 0x0

    return-object v0
.end method
