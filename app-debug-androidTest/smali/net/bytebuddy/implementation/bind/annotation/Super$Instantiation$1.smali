.class final enum Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation$1;
.super Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
.source "Super.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bind/annotation/Super$1;)V

    return-void
.end method


# virtual methods
.method protected proxyFor(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 7
    .param p1, "parameterType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/Super;",
            ">;)",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
        }
    .end annotation

    .line 131
    .local p3, "annotation":Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<Lnet/bytebuddy/implementation/bind/annotation/Super;>;"
    new-instance v6, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;

    .line 133
    invoke-static {}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->access$100()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    const-class v1, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 134
    invoke-static {}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->access$200()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 135
    invoke-static {}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->access$300()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Ljava/util/List;ZZ)V

    .line 131
    return-object v6
.end method
