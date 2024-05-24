.class Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionForMapNoDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    .line 140
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Key \'%s\' not present in map"

    invoke-static {v1, v2, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 146
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 151
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;

    if-eqz v0, :cond_0

    .line 152
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;

    .line 153
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault<**>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 155
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 160
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Functions.forMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
