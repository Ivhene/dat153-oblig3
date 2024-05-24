.class public final synthetic Lorg/checkerframework/com/github/javaparser/ParseStart$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ParseStart;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->ModuleDirectiveParseStart()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;

    move-result-object p1

    return-object p1
.end method
