.class public Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;
.super Ljava/lang/Object;
.source "CallableDeclaration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Signature"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p2, "parameterTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->name:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->parameterTypes:Ljava/util/List;

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$1;

    .line 253
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 4

    .line 294
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->parameterTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    const-string v3, ", "

    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 274
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 275
    return v0

    .line 276
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;

    .line 279
    .local v2, "signature":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 280
    return v1

    .line 281
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->parameterTypes:Ljava/util/List;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->parameterTypes:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 282
    return v1

    .line 283
    :cond_3
    return v0

    .line 277
    .end local v2    # "signature":Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;
    :cond_4
    :goto_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->parameterTypes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 288
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 289
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->parameterTypes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 290
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
