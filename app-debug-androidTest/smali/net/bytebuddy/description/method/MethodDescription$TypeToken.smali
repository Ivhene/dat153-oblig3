.class public Lnet/bytebuddy/description/method/MethodDescription$TypeToken;
.super Ljava/lang/Object;
.source "MethodDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeToken"
.end annotation


# instance fields
.field private transient synthetic hashCode:I

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .param p1, "returnType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 2150
    .local p2, "parameterTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2151
    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 2152
    iput-object p2, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->parameterTypes:Ljava/util/List;

    .line 2153
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 2184
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2185
    return v0

    .line 2186
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2187
    return v2

    .line 2189
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    .line 2190
    .local v1, "typeToken":Lnet/bytebuddy/description/method/MethodDescription$TypeToken;
    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, v1, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->parameterTypes:Ljava/util/List;

    iget-object v4, v1, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->parameterTypes:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation

    .line 2171
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->parameterTypes:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 2161
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 2177
    iget v0, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/method/MethodDescription$TypeToken;
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 2178
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->parameterTypes:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 2179
    move v4, v1

    move-object v1, v0

    move v0, v4

    .end local v0    # "this":Lnet/bytebuddy/description/method/MethodDescription$TypeToken;
    .end local v1    # "result":I
    :goto_0
    if-nez v0, :cond_1

    iget v0, v1, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, v1, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->hashCode:I

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2196
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->parameterTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 2197
    .local v2, "parameterType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    .end local v2    # "parameterType":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 2199
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
