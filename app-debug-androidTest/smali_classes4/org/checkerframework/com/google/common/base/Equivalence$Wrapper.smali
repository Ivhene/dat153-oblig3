.class public final Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/base/Equivalence;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;, "Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper<TT;>;"
    .local p1, "equivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<-TT;>;"
    .local p2, "reference":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Equivalence;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 191
    iput-object p2, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/base/Equivalence;Ljava/lang/Object;Lorg/checkerframework/com/google/common/base/Equivalence$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/base/Equivalence;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/base/Equivalence$1;

    .line 185
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;, "Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;-><init>(Lorg/checkerframework/com/google/common/base/Equivalence;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 206
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;, "Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper<TT;>;"
    if-ne p1, p0, :cond_0

    .line 207
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;

    if-eqz v0, :cond_1

    .line 210
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;

    .line 212
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;, "Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 219
    .local v1, "equivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 222
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;, "Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper<*>;"
    .end local v1    # "equivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<Ljava/lang/Object;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;, "Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 228
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;, "Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 237
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;, "Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wrap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
