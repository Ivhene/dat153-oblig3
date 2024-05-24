.class final Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;
.super Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2158
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 2159
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2167
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;->DEFAULT_STYLE:Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
