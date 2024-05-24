.class public Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;
.super Ljava/lang/Object;
.source "LoadedTypeInitializer.java"

# interfaces
.implements Lnet/bytebuddy/implementation/LoadedTypeInitializer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/LoadedTypeInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final loadedTypeInitializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "loadedTypeInitializers":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/implementation/LoadedTypeInitializer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    .line 179
    .local v1, "loadedTypeInitializer":Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    instance-of v2, v1, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    iget-object v3, v3, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 181
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v1    # "loadedTypeInitializer":Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    :cond_1
    :goto_1
    goto :goto_0

    .line 185
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/LoadedTypeInitializer;)V
    .locals 1
    .param p1, "loadedTypeInitializer"    # [Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    .line 168
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;-><init>(Ljava/util/List;)V

    .line 169
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    iget-object p1, p1, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAlive()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    .line 201
    .local v1, "loadedTypeInitializer":Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    invoke-interface {v1}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const/4 v0, 0x1

    return v0

    .line 204
    .end local v1    # "loadedTypeInitializer":Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onLoad(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 191
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;->loadedTypeInitializers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    .line 192
    .local v1, "loadedTypeInitializer":Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->onLoad(Ljava/lang/Class;)V

    .line 193
    .end local v1    # "loadedTypeInitializer":Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method
