.class final enum Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType$7;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1354
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/annotation/AnnotationValue$1;)V

    return-void
.end method


# virtual methods
.method protected doCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1357
    move-object v0, p1

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "self"    # Ljava/lang/Object;
    .param p2, "other"    # Ljava/lang/Object;

    .line 1367
    instance-of v0, p2, [F

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, [F

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1362
    move-object v0, p1

    check-cast v0, [F

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0
.end method

.method protected toString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .line 1372
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->FLOAT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method