.class final Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;
.super Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2259
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 2260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setUseClassName(Z)V

    .line 2261
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2262
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setUseFieldNames(Z)V

    .line 2263
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 2265
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2272
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->SIMPLE_STYLE:Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method