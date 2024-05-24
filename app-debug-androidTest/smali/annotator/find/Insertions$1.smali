.class Lannotator/find/Insertions$1;
.super Ljava/lang/Object;
.source "Insertions.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lannotator/find/Insertions;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lannotator/find/Insertion;",
        ">;"
    }
.end annotation


# instance fields
.field private iiter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation
.end field

.field private miter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lannotator/find/Insertion;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private siter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Set<",
            "Lannotator/find/Insertion;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lannotator/find/Insertions;


# direct methods
.method constructor <init>(Lannotator/find/Insertions;)V
    .locals 1
    .param p1, "this$0"    # Lannotator/find/Insertions;

    .line 204
    iput-object p1, p0, Lannotator/find/Insertions$1;->this$0:Lannotator/find/Insertions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    nop

    .line 206
    invoke-static {p1}, Lannotator/find/Insertions;->access$000(Lannotator/find/Insertions;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/Insertions$1;->miter:Ljava/util/Iterator;

    .line 208
    nop

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/Insertions$1;->siter:Ljava/util/Iterator;

    .line 210
    nop

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/Insertions$1;->iiter:Ljava/util/Iterator;

    .line 210
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lannotator/find/Insertions$1;->iiter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Lannotator/find/Insertions$1;->siter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lannotator/find/Insertions$1;->siter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/Insertions$1;->iiter:Ljava/util/Iterator;

    .line 220
    invoke-virtual {p0}, Lannotator/find/Insertions$1;->hasNext()Z

    move-result v0

    return v0

    .line 222
    :cond_1
    iget-object v0, p0, Lannotator/find/Insertions$1;->miter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lannotator/find/Insertions$1;->miter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/Insertions$1;->siter:Ljava/util/Iterator;

    .line 224
    invoke-virtual {p0}, Lannotator/find/Insertions$1;->hasNext()Z

    move-result v0

    return v0

    .line 226
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lannotator/find/Insertion;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lannotator/find/Insertions$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lannotator/find/Insertions$1;->iiter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lannotator/find/Insertion;

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lannotator/find/Insertions$1;->next()Lannotator/find/Insertion;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
