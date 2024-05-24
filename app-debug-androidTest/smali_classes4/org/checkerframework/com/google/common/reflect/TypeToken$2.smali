.class Lorg/checkerframework/com/google/common/reflect/TypeToken$2;
.super Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken;->constructor(Ljava/lang/reflect/Constructor;)Lorg/checkerframework/com/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken;

    .line 620
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$2;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$2;"
    .local p2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$2;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;-><init>(Ljava/lang/reflect/Constructor;)V

    return-void
.end method


# virtual methods
.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .line 633
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$2;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$2;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$000(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .line 628
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$2;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$2;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$100(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 2

    .line 623
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$2;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$2;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$000(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$ConstructorInvokable;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 638
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$2;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$2;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 643
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$2;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$2;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$2;->getOwnerType()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Joiner;->on(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$2;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
