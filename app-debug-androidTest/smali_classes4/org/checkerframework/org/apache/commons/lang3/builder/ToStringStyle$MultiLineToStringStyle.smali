.class final Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;
.super Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiLineToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2295
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 2296
    const-string v0, "["

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 2298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;->setFieldSeparatorAtStart(Z)V

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 2300
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2308
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;->MULTI_LINE_STYLE:Lorg/checkerframework/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
