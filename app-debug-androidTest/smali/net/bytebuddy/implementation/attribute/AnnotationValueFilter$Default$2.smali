.class final enum Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default$2;
.super Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;
.source "AnnotationValueFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/attribute/AnnotationValueFilter$1;)V

    return-void
.end method


# virtual methods
.method public isRelevant(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Z
    .locals 1
    .param p1, "annotationDescription"    # Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .param p2, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 99
    const/4 v0, 0x1

    return v0
.end method
