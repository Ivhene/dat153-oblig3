.class Lorg/checkerframework/com/google/common/reflect/TypeToken$1;
.super Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken;->method(Ljava/lang/reflect/Method;)Lorg/checkerframework/com/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 581
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$1;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$1;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .line 594
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$1;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$1;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$000(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .line 589
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$1;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$1;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$100(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver;->resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 2

    .line 584
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$1;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$1;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$000(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable;->getGenericReturnType()Ljava/lang/reflect/Type;

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

    .line 599
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$1;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$1;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 604
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$1;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$1;->getOwnerType()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/com/google/common/reflect/Invokable$MethodInvokable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
