.class public Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;
.super Ljava/lang/Object;
.source "WeakIdentityPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT1;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT2;>;"
        }
    .end annotation
.end field

.field private final hashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<TT1;TT2;>;"
    .local p1, "a":Ljava/lang/Object;, "TT1;"
    .local p2, "b":Ljava/lang/Object;, "TT2;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->a:Ljava/lang/ref/WeakReference;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->b:Ljava/lang/ref/WeakReference;

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "localHashCode":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    add-int v0, v1, v2

    .line 44
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 45
    :goto_0
    iput v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->hashCode:I

    .line 46
    return-void

    .line 35
    .end local v0    # "localHashCode":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    .line 36
    const-string v2, "WeakIdentityPair cannot hold null: %s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<",
            "TA;TB;>;"
        }
    .end annotation

    .line 58
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<TT1;TT2;>;"
    instance-of v0, p1, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 94
    return v1

    .line 98
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;

    .line 100
    .local v0, "other":Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<TT1;TT2;>;"
    iget v2, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->hashCode:I

    iget v3, v0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->hashCode:I

    if-eq v2, v3, :cond_1

    .line 101
    return v1

    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->getA()Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, "a":Ljava/lang/Object;, "TT1;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->getB()Ljava/lang/Object;

    move-result-object v3

    .line 106
    .local v3, "b":Ljava/lang/Object;, "TT2;"
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->getA()Ljava/lang/Object;

    move-result-object v4

    .line 107
    .local v4, "oa":Ljava/lang/Object;, "TT1;"
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->getB()Ljava/lang/Object;

    move-result-object v5

    .line 108
    .local v5, "ob":Ljava/lang/Object;, "TT2;"
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-nez v5, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    if-ne v2, v4, :cond_3

    if-ne v3, v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 110
    :cond_4
    :goto_0
    return v1
.end method

.method public getA()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT1;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 68
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<TT1;TT2;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getB()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT2;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<TT1;TT2;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 118
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<TT1;TT2;>;"
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<TT1;TT2;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;->b:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
