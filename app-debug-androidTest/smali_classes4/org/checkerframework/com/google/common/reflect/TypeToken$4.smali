.class Lorg/checkerframework/com/google/common/reflect/TypeToken$4;
.super Lorg/checkerframework/com/google/common/reflect/TypeVisitor;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawTypes()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

.field final synthetic val$builder:Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 1088
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$4;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$4;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;->val$builder:Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method visitClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1106
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$4;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$4;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;->val$builder:Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    .line 1107
    return-void
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/reflect/GenericArrayType;

    .line 1111
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$4;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$4;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;->val$builder:Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/reflect/Types;->getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    .line 1112
    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/reflect/ParameterizedType;

    .line 1101
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$4;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$4;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;->val$builder:Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$Builder;

    .line 1102
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 1091
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$4;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$4;"
    .local p1, "t":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;->visit([Ljava/lang/reflect/Type;)V

    .line 1092
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/reflect/WildcardType;

    .line 1096
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$4;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$4;"
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$4;->visit([Ljava/lang/reflect/Type;)V

    .line 1097
    return-void
.end method
