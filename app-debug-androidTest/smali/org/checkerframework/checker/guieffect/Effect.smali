.class public final Lorg/checkerframework/checker/guieffect/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/guieffect/Effect$EffectRange;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final annotClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    if-eq p1, v0, :cond_1

    const-class v0, Lorg/checkerframework/checker/guieffect/qual/PolyUIEffect;

    if-eq p1, v0, :cond_1

    const-class v0, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    .line 25
    return-void
.end method

.method public static lessThanOrEqualTo(Lorg/checkerframework/checker/guieffect/Effect;Lorg/checkerframework/checker/guieffect/Effect;)Z
    .locals 6
    .param p0, "left"    # Lorg/checkerframework/checker/guieffect/Effect;
    .param p1, "right"    # Lorg/checkerframework/checker/guieffect/Effect;

    .line 35
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 36
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    const-class v1, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 37
    .local v1, "leftBottom":Z
    :goto_0
    iget-object v4, p1, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    const-class v5, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    if-ne v4, v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 38
    .local v5, "rightTop":Z
    :goto_1
    if-nez v1, :cond_3

    if-nez v5, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    return v2

    .line 35
    .end local v1    # "leftBottom":Z
    .end local v5    # "rightTop":Z
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static min(Lorg/checkerframework/checker/guieffect/Effect;Lorg/checkerframework/checker/guieffect/Effect;)Lorg/checkerframework/checker/guieffect/Effect;
    .locals 1
    .param p0, "l"    # Lorg/checkerframework/checker/guieffect/Effect;
    .param p1, "r"    # Lorg/checkerframework/checker/guieffect/Effect;

    .line 42
    invoke-static {p0, p1}, Lorg/checkerframework/checker/guieffect/Effect;->lessThanOrEqualTo(Lorg/checkerframework/checker/guieffect/Effect;Lorg/checkerframework/checker/guieffect/Effect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    return-object p0

    .line 45
    :cond_0
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 110
    instance-of v0, p1, Lorg/checkerframework/checker/guieffect/Effect;

    if-eqz v0, :cond_0

    .line 111
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/checker/guieffect/Effect;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/guieffect/Effect;->equals(Lorg/checkerframework/checker/guieffect/Effect;)Z

    move-result v0

    return v0

    .line 113
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Lorg/checkerframework/checker/guieffect/Effect;)Z
    .locals 2
    .param p1, "e"    # Lorg/checkerframework/checker/guieffect/Effect;

    .line 105
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    iget-object v1, p1, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAnnot()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isPoly()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    const-class v1, Lorg/checkerframework/checker/guieffect/qual/PolyUIEffect;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSafe()Z
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    const-class v1, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUI()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    const-class v1, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/Effect;->annotClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
