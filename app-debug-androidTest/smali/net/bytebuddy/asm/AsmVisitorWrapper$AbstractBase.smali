.class public abstract Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;
.super Ljava/lang/Object;
.source "AsmVisitorWrapper.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/AsmVisitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeReader(I)I
    .locals 0
    .param p1, "flags"    # I

    .line 148
    return p1
.end method

.method public mergeWriter(I)I
    .locals 0
    .param p1, "flags"    # I

    .line 141
    return p1
.end method
