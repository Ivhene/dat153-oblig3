.class final enum Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod$2;
.super Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;
.source "MethodAttributeAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/attribute/MethodAttributeAppender$1;)V

    return-void
.end method


# virtual methods
.method protected appendReceiver(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 2
    .param p1, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p2, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p3, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 177
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 178
    .local v0, "receiverType":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {p1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofReceiverType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 178
    :goto_0
    return-object v1
.end method
