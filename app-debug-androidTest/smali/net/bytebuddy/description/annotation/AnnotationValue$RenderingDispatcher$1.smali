.class final enum Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$1;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ICCZ)V
    .locals 7
    .param p3, "openingBrace"    # C
    .param p4, "closingBrace"    # C
    .param p5, "componentAsInteger"    # Z

    .line 116
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;-><init>(Ljava/lang/String;ICCZLnet/bytebuddy/description/annotation/AnnotationValue$1;)V

    return-void
.end method


# virtual methods
.method public toSourceString(C)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # C

    .line 119
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSourceString(D)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # D

    .line 134
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSourceString(F)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # F

    .line 129
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSourceString(J)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # J

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSourceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 139
    return-object p1
.end method

.method public toSourceString(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
