.class Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;
.super Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;
.source "FIsAReducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FIsAReducingVisitor"
.end annotation

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
.field final synthetic this$0:Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->this$0:Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;
    .param p2, "x1"    # Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$1;

    .line 73
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;-><init>(Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
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

    .line 79
    .local p3, "afConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected FIsA Combination:\nargument="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nparameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nconstraints=[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
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

    .line 79
    return-object v0
.end method

.method public bridge synthetic visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 3
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
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

    .line 98
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
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

    .line 107
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
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

    .line 115
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
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

    .line 123
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
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

    .line 135
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 12
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
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

    .line 143
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->this$0:Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;

    .line 148
    invoke-static {v0}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;->access$100(Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->castedAsSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 149
    .local v0, "argumentAsParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-nez v0, :cond_1

    .line 150
    return-object v1

    .line 153
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "argTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    .line 155
    .local v3, "paramTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 156
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 157
    .local v5, "argTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 159
    .local v6, "paramTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_3

    .line 160
    move-object v7, v6

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 162
    .local v7, "paramWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v8, v9, :cond_2

    .line 163
    move-object v8, v5

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 164
    .local v8, "argWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    new-instance v9, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    .line 165
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 164
    invoke-interface {p3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v9, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v7    # "paramWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v8    # "argWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :cond_2
    goto :goto_1

    .line 170
    :cond_3
    new-instance v7, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-direct {v7, v8, v9}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v5    # "argTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "paramTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    .end local v4    # "i":I
    :cond_4
    return-object v1

    .line 144
    .end local v0    # "argumentAsParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "argTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v3    # "paramTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_5
    :goto_2
    return-object v1
.end method

.method public bridge synthetic visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
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

    .line 182
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
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

    .line 190
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
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

    .line 198
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
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

    .line 206
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
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

    .line 214
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
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

    .line 224
    .local p3, "afConstraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 2
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
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

    .line 236
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->this$0:Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;

    invoke-static {v1}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;->access$100(Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
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

    .line 245
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
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

    .line 264
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsAReducer$FIsAReducingVisitor;->visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/Void;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "argument"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
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

    .line 256
    .local p3, "constraints":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;>;"
    const/4 v0, 0x0

    return-object v0
.end method
