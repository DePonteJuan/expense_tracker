import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:expense_repository/expense_repository.dart' as exp_repo;

part 'create_category_event.dart';
part 'create_category_state.dart';

class CreateCategoryBloc
    extends Bloc<CreateCategoryEvent, CreateCategoryState> {
  final exp_repo.ExpenseRepository expenseRepository;
  CreateCategoryBloc({required this.expenseRepository}) : super(CreateCategoryInitial()) {
    on<CreateCategory>((event, emit) async {
      emit(CreateCategoryLoading());

      try {
        await expenseRepository.createCategory(event.category);
        emit(CreateCategorySuccess());
      } catch (e) {
        emit(CreateCategoryFailure());
      }
    });
  }
}
